// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.chat;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.api.LoadSnapMediaTask;
import com.snapchat.android.api2.chat.TellThemIAmTypingTask;
import com.snapchat.android.cash.SendingCashManager;
import com.snapchat.android.chat.ChatConnectionMonitor;
import com.snapchat.android.chat.SendingMailman;
import com.snapchat.android.database.table.CashFeedItemTable;
import com.snapchat.android.database.table.ClearedChatIdsTable;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.ChronologicalSnapProvider;
import com.snapchat.android.model.ReceivedSnap;
import com.snapchat.android.model.SentSnap;
import com.snapchat.android.model.Snap;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.server.chat.ChatMessage;
import com.snapchat.android.model.server.chat.ConversationMessage;
import com.snapchat.android.model.server.chat.ReleaseMessage;
import com.snapchat.android.model.server.chat.SignedPayload;
import com.snapchat.android.util.CashUtils;
import com.snapchat.android.util.GsonWrapper;
import com.snapchat.android.util.ScExecutors;
import com.snapchat.android.util.ScTextUtils;
import com.snapchat.android.util.SnapUtils;
import com.snapchat.android.util.cache.Cache;
import com.snapchat.android.util.cache.Caches;
import com.snapchat.android.util.chat.ChatUtils;
import com.snapchat.android.util.crypto.SlightlySecurePreferences;
import com.snapchat.android.util.crypto.SlightlySecurePreferencesKey;
import com.snapchat.android.util.crypto.SlightlySecurePreferencesKeys;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ChatUpdatedEvent;
import com.snapchat.android.util.eventbus.PresenceUpdatedEvent;
import com.snapchat.android.util.eventbus.UpdateFeedEvent;
import com.snapchat.android.util.primitives.LongUtils;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

// Referenced classes of package com.snapchat.android.model.chat:
//            CashFeedItem, ChatFeedItem, ChatConversationManager, Chat, 
//            ChatMedia, ISavableChatFeedItem, IIterableChatFeedItem

public class ChatConversation
    implements ChronologicalSnapProvider, Comparable
{
    public static final class SequenceNumberState extends Enum
    {

        private static final SequenceNumberState $VALUES[];
        public static final SequenceNumberState NOT_UPDATED;
        public static final SequenceNumberState UPDATED;
        public static final SequenceNumberState UPDATING;

        public static SequenceNumberState valueOf(String s1)
        {
            return (SequenceNumberState)Enum.valueOf(com/snapchat/android/model/chat/ChatConversation$SequenceNumberState, s1);
        }

        public static SequenceNumberState[] values()
        {
            return (SequenceNumberState[])$VALUES.clone();
        }

        static 
        {
            NOT_UPDATED = new SequenceNumberState("NOT_UPDATED", 0);
            UPDATING = new SequenceNumberState("UPDATING", 1);
            UPDATED = new SequenceNumberState("UPDATED", 2);
            SequenceNumberState asequencenumberstate[] = new SequenceNumberState[3];
            asequencenumberstate[0] = NOT_UPDATED;
            asequencenumberstate[1] = UPDATING;
            asequencenumberstate[2] = UPDATED;
            $VALUES = asequencenumberstate;
        }

        private SequenceNumberState(String s1, int i1)
        {
            super(s1, i1);
        }
    }


    public static final String CHAT_ID_DELIMITER = "~";
    private static final int RECIPIENT_PRESENCE_TIME_INTERVAL = 16000;
    private static final int SENDER_PRESENCE_TIME_INTERVAL = 7000;
    private static final String TAG = "ChatConversation";
    private static final int TIME_BEFORE_DELETING_FAILED_CHATS_IN_MILLISECONDS = 0x36ee80;
    private boolean mAmIPresent;
    private boolean mAmITyping;
    private boolean mBeingCleared;
    private final List mChats;
    private String mChatsIterToken;
    private Set mClearedChatIds;
    private boolean mEnteredConversationFromRecentStoryReply;
    private Set mFailedChatMessages;
    private Set mFailedReleaseMessages;
    private Set mFailedSnaps;
    GsonWrapper mGsonWrapper;
    private boolean mHasUnopenedReceivedSnaps;
    private boolean mHasUnreleasedReceivedChats;
    private boolean mHasUnviewedCash;
    private boolean mHasUnviewedSnapsWithAudio;
    private com.snapchat.android.model.server.chat.PresenceMessage.HereAuth mHereAuth;
    private final String mId;
    private boolean mIsDisplayingVideo;
    private boolean mIsNotifyingRecipientAboutTyping;
    private boolean mIsRecipientPresent;
    private boolean mIsSavableConversation;
    private boolean mIsStub;
    private boolean mIsUserInConversation;
    private ChatFeedItem mItemForFeedIcon;
    private List mItemsForFeedIcon;
    private String mIterToken;
    private CashFeedItem mLastCashFromServer;
    private Chat mLastChatFromServer;
    private long mLastSeqNumOfMyChatIDeleted;
    private long mLastSeqNumOfMyChatTheyReleased;
    private long mLastSeqNumOfTheirChatIDeleted;
    private long mLastSeqNumOfTheirChatIDisplayed;
    private long mLastSeqNumOfTheirChatIReleased;
    private Snap mLastSnapFromServer;
    private long mLastTCPMessageSentTimestamp;
    private long mLastTimestampOfReceivedSnapReadReceiptIDeleted;
    private long mLastTimestampOfReceivedSnapReadReceiptIReleased;
    private long mLastTimestampOfSentSnapReadReceiptIDeleted;
    private long mLastTimestampOfSentSnapReadReceiptIReleased;
    Cache mMediaImageCache;
    private SignedPayload mMessagingAuthToken;
    private long mMyLastConnSeqNum;
    private long mMyLastSeqNum;
    private String mMyUsername;
    private int mNumTCPChatMessagesSendingOrSent;
    private int mPendingRainBills;
    private long mPendingRainTransactionTimestamp;
    private List mPendingReceivedChats;
    private final Handler mRecipientPresenceHandler;
    private final Runnable mRecipientPresenceRunnable;
    private boolean mRecipientSupportsHere;
    private int mSecondsLeftInUnviewedSnaps;
    private final Handler mSenderPresenceHandler;
    private final Runnable mSenderPresenceRunnable;
    SendingCashManager mSendingCashManager;
    private Set mSendingChatFeedItemIds;
    private final Set mSendingMessages;
    private SequenceNumberState mSequenceNumberState;
    SlightlySecurePreferences mSlightlySecurePreferences;
    private long mTheirLastConnSeqNum;
    private long mTheirLastSeqNum;
    private String mTheirUsername;
    private long mTimestamp;

    public ChatConversation(String s1, String s2)
    {
        this(ChatUtils.a(s1, s2), s1, s2);
    }

    protected ChatConversation(String s1, String s2, long l1, long l2)
    {
        this(ChatUtils.a(s1, s2), s1, s2);
        mMyLastSeqNum = l1;
        mTheirLastSeqNum = l2;
    }

    private ChatConversation(String s1, String s2, String s3)
    {
        mMediaImageCache = Caches.i;
        mChats = new ArrayList();
        mPendingReceivedChats = new ArrayList();
        mSendingMessages = new HashSet();
        mFailedChatMessages = new HashSet();
        mFailedReleaseMessages = new HashSet();
        mClearedChatIds = new HashSet();
        mFailedSnaps = new HashSet();
        mHasUnreleasedReceivedChats = false;
        mPendingRainBills = 0;
        mPendingRainTransactionTimestamp = 0L;
        mSendingChatFeedItemIds = new HashSet();
        mSecondsLeftInUnviewedSnaps = 0;
        mEnteredConversationFromRecentStoryReply = false;
        mIsSavableConversation = true;
        SnapchatApplication.e().a(this);
        mId = s1;
        mMyUsername = s2;
        mTheirUsername = s3;
        Looper looper = Looper.getMainLooper();
        mSenderPresenceHandler = new Handler(looper);
        mRecipientPresenceHandler = new Handler(looper);
        mSenderPresenceRunnable = new Runnable() {

            final ChatConversation this$0;

            public void run()
            {
                d(true);
            }

            
            {
                this$0 = ChatConversation.this;
                super();
            }
        };
        mRecipientPresenceRunnable = new Runnable() {

            final ChatConversation this$0;

            public void run()
            {
                ChatConversation.a(ChatConversation.this, null);
                ChatConversation.a(ChatConversation.this, false);
                BusProvider.a().a(new PresenceUpdatedEvent(ChatConversation.b(ChatConversation.this), false, "presence timeout (16000 seconds)"));
            }

            
            {
                this$0 = ChatConversation.this;
                super();
            }
        };
        SlightlySecurePreferencesKey slightlysecurepreferenceskey = new SlightlySecurePreferencesKey((new StringBuilder()).append(SlightlySecurePreferencesKeys.b.a()).append(mTheirUsername).toString(), SlightlySecurePreferencesKeys.b.b());
        String s4 = mSlightlySecurePreferences.a(slightlysecurepreferenceskey);
        if (s4 != null)
        {
            mMessagingAuthToken = (SignedPayload)mGsonWrapper.a(s4, com/snapchat/android/model/server/chat/SignedPayload);
        }
        mSequenceNumberState = SequenceNumberState.NOT_UPDATED;
    }

    public ChatConversation(String s1, String s2, boolean flag)
    {
        this(s1, s2);
        mIsStub = flag;
    }

    static com.snapchat.android.model.server.chat.PresenceMessage.HereAuth a(ChatConversation chatconversation, com.snapchat.android.model.server.chat.PresenceMessage.HereAuth hereauth)
    {
        chatconversation.mHereAuth = hereauth;
        return hereauth;
    }

    static boolean a(ChatConversation chatconversation, boolean flag)
    {
        chatconversation.mIsRecipientPresent = flag;
        return flag;
    }

    static String b(ChatConversation chatconversation)
    {
        return chatconversation.mTheirUsername;
    }

    private void b(CashFeedItem cashfeeditem)
    {
        com.snapchat.android.model.CashTransaction.TransactionStatus transactionstatus = cashfeeditem.h().o();
        if (cashfeeditem.h().w() && !cashfeeditem.o() && transactionstatus == com.snapchat.android.model.CashTransaction.TransactionStatus.COMPLETED)
        {
            mPendingRainBills = mPendingRainBills + cashfeeditem.f() / 100;
            if (mPendingRainTransactionTimestamp == 0L || mPendingRainTransactionTimestamp > cashfeeditem.ae())
            {
                mPendingRainTransactionTimestamp = cashfeeditem.ae();
            }
            cashfeeditem.p();
        }
    }

    private void d(ChatFeedItem chatfeeditem)
    {
        synchronized (mChats)
        {
            mChats.remove(chatfeeditem);
            mChats.add(chatfeeditem);
        }
        BusProvider.a().a(new ChatUpdatedEvent(mId, chatfeeditem.d()));
        BusProvider.a().a(new UpdateFeedEvent());
        return;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void n(String s1)
    {
        Timber.c("ChatConversation", "Message marked as Failed. Removing [%s] from sending ID list", new Object[] {
            s1
        });
        mSendingChatFeedItemIds.remove(s1);
        BusProvider.a().a(new UpdateFeedEvent());
    }

    public boolean A()
    {
        return mIsUserInConversation;
    }

    public boolean B()
    {
        return mAmIPresent;
    }

    public boolean C()
    {
        return mIsRecipientPresent;
    }

    public boolean D()
    {
        return mRecipientSupportsHere;
    }

    public boolean E()
    {
        return mNumTCPChatMessagesSendingOrSent > 0;
    }

    public boolean F()
    {
        while (!E() || ChatConnectionMonitor.a().f()) 
        {
            return false;
        }
        return true;
    }

    public long G()
    {
        return mLastTCPMessageSentTimestamp;
    }

    public void H()
    {
        List list = mChats;
        list;
        JVM INSTR monitorenter ;
        Iterator iterator = mFailedChatMessages.iterator();
_L1:
        Chat chat;
        ChatMessage chatmessage;
        do
        {
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_95;
            }
            chatmessage = (ChatMessage)iterator.next();
        } while (System.currentTimeMillis() - chatmessage.getTimestamp() < 0x36ee80L);
        chat = f(chatmessage.getChatMessageId());
        if (chat == null)
        {
            break MISSING_BLOCK_LABEL_81;
        }
        mChats.remove(chat);
        iterator.remove();
          goto _L1
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        ArrayList arraylist;
        Iterator iterator1 = mChats.iterator();
        arraylist = new ArrayList();
        do
        {
            if (!iterator1.hasNext())
            {
                break;
            }
            ChatFeedItem chatfeeditem = (ChatFeedItem)iterator1.next();
            if (chatfeeditem instanceof CashFeedItem)
            {
                CashFeedItem cashfeeditem = (CashFeedItem)chatfeeditem;
                if (cashfeeditem.W() && System.currentTimeMillis() - chatfeeditem.ae() >= 0x36ee80L)
                {
                    arraylist.add(cashfeeditem);
                    iterator1.remove();
                }
            }
        } while (true);
        CashFeedItemTable.b(SnapchatApplication.e(), arraylist);
        list;
        JVM INSTR monitorexit ;
    }

    public boolean I()
    {
        return mPendingReceivedChats.size() > 0;
    }

    public void J()
    {
        mPendingReceivedChats.clear();
    }

    public void K()
    {
        synchronized (mChats)
        {
            if (!mChats.isEmpty())
            {
                mTimestamp = ((ChatFeedItem)mChats.get(-1 + mChats.size())).ae();
            }
        }
        ChatConversationManager.a().f();
        BusProvider.a().a(new UpdateFeedEvent());
        return;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void L()
    {
        mMyLastSeqNum = M();
    }

    protected long M()
    {
        long l1 = mMyLastSeqNum;
        List list = mChats;
        list;
        JVM INSTR monitorenter ;
        long l2;
        ListIterator listiterator = mChats.listIterator(mChats.size());
        Chat chat;
        do
        {
            ChatFeedItem chatfeeditem;
            do
            {
                if (!listiterator.hasPrevious())
                {
                    break MISSING_BLOCK_LABEL_112;
                }
                chatfeeditem = (ChatFeedItem)listiterator.previous();
            } while (!(chatfeeditem instanceof Chat) || !ChatUtils.a(chatfeeditem));
            chat = (Chat)chatfeeditem;
        } while (chat.W() || chat.V());
        l2 = chat.i();
_L2:
        return l2;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        l2 = l1;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public Set N()
    {
        return mFailedReleaseMessages;
    }

    public void O()
    {
        mFailedReleaseMessages.clear();
    }

    public boolean P()
    {
label0:
        {
            synchronized (mChats)
            {
                Iterator iterator = mChats.iterator();
                do
                {
                    if (!iterator.hasNext())
                    {
                        break label0;
                    }
                } while (((ChatFeedItem)iterator.next()).t());
            }
            return false;
        }
        boolean flag;
        if (mChats.isEmpty() && (mItemForFeedIcon == null || !mItemForFeedIcon.t()))
        {
            flag = false;
        } else
        {
            flag = true;
        }
        list;
        JVM INSTR monitorexit ;
        return flag;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void Q()
    {
        mMyLastConnSeqNum = 0L;
    }

    public void R()
    {
        mSenderPresenceHandler.removeCallbacks(mSenderPresenceRunnable);
        if (mAmIPresent)
        {
            mSenderPresenceHandler.postDelayed(mSenderPresenceRunnable, 7000L);
        }
    }

    public void S()
    {
        mRecipientPresenceHandler.removeCallbacks(mRecipientPresenceRunnable);
        if (mIsRecipientPresent)
        {
            mRecipientPresenceHandler.postDelayed(mRecipientPresenceRunnable, 16000L);
        }
    }

    public long T()
    {
        return mTimestamp;
    }

    public long U()
    {
        if (mItemForFeedIcon != null)
        {
            return mItemForFeedIcon.c(this);
        } else
        {
            return mTimestamp;
        }
    }

    public String V()
    {
        return mIterToken;
    }

    public String W()
    {
        return mChatsIterToken;
    }

    public long X()
    {
        return mMyLastSeqNum;
    }

    public long Y()
    {
        return mTheirLastSeqNum;
    }

    public long Z()
    {
        return mTheirLastConnSeqNum;
    }

    public int a(int i1, ReceivedSnap receivedsnap, boolean flag)
    {
        return a(i1, receivedsnap, flag, new AtomicBoolean(false), new AtomicInteger(0));
    }

    public int a(int i1, ReceivedSnap receivedsnap, boolean flag, AtomicBoolean atomicboolean, AtomicInteger atomicinteger)
    {
        List list = a(i1, receivedsnap);
        if (list.isEmpty())
        {
            return 0;
        }
        Iterator iterator = list.iterator();
        int j1 = 0;
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            ReceivedSnap receivedsnap1 = (ReceivedSnap)iterator.next();
            if (!receivedsnap1.U())
            {
                j1++;
                if (!receivedsnap1.Z())
                {
                    (new LoadSnapMediaTask(receivedsnap1, atomicboolean, atomicinteger)).executeOnExecutor(ScExecutors.b, new Void[0]);
                }
            }
        } while (true);
        return j1;
    }

    public int a(ChatConversation chatconversation)
    {
        return LongUtils.a(chatconversation.mTimestamp, mTimestamp);
    }

    public long a(long l1)
    {
        if (mTimestamp > l1)
        {
            l1 = 1L + mTimestamp;
        }
        return l1;
    }

    public String a()
    {
        if (mMyUsername.equals(UserPrefs.k()))
        {
            return mTheirUsername;
        } else
        {
            return mMyUsername;
        }
    }

    public List a(int i1, ReceivedSnap receivedsnap)
    {
        ArrayList arraylist = new ArrayList(i1);
        boolean flag;
        List list;
        Exception exception;
        Iterator iterator;
        boolean flag1;
        ChatFeedItem chatfeeditem;
        if (receivedsnap == null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        list = mChats;
        list;
        JVM INSTR monitorenter ;
        iterator = mChats.iterator();
        flag1 = flag;
_L2:
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_136;
        }
        chatfeeditem = (ChatFeedItem)iterator.next();
        if (flag1)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (!chatfeeditem.d().equals(receivedsnap.d()))
        {
            continue; /* Loop/switch isn't completed */
        }
        flag1 = true;
        if (true) goto _L2; else goto _L1
_L1:
        if (!(chatfeeditem instanceof ReceivedSnap) || ((ReceivedSnap)chatfeeditem).F()) goto _L2; else goto _L3
_L3:
        arraylist.add((ReceivedSnap)chatfeeditem);
        if (arraylist.size() != i1) goto _L2; else goto _L4
_L4:
        list;
        JVM INSTR monitorexit ;
        return arraylist;
        list;
        JVM INSTR monitorexit ;
        return arraylist;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(int i1)
    {
        mNumTCPChatMessagesSendingOrSent = i1;
    }

    public void a(SentSnap sentsnap)
    {
        m(sentsnap.d());
        mTimestamp = System.currentTimeMillis();
        SentSnap sentsnap1 = (SentSnap)d(sentsnap.d());
        if (sentsnap1 != null)
        {
            sentsnap1.o();
        }
    }

    public void a(Snap snap)
    {
        mLastSnapFromServer = snap;
    }

    public void a(CashFeedItem cashfeeditem)
    {
        mLastCashFromServer = cashfeeditem;
    }

    public void a(Chat chat)
    {
        mPendingReceivedChats.add(chat);
        Collections.sort(mPendingReceivedChats, new Comparator() {

            final ChatConversation this$0;

            public int a(Chat chat1, Chat chat2)
            {
                if (chat1.i() < chat2.i())
                {
                    return -1;
                }
                return chat1.i() <= chat2.i() ? 0 : 1;
            }

            public int compare(Object obj, Object obj1)
            {
                return a((Chat)obj, (Chat)obj1);
            }

            
            {
                this$0 = ChatConversation.this;
                super();
            }
        });
    }

    public void a(SequenceNumberState sequencenumberstate)
    {
        mSequenceNumberState = sequencenumberstate;
    }

    public void a(ChatFeedItem chatfeeditem)
    {
        synchronized (mChats)
        {
            mChats.add(chatfeeditem);
            if (chatfeeditem instanceof CashFeedItem)
            {
                b((CashFeedItem)chatfeeditem);
            }
        }
        return;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(ChatMedia chatmedia)
    {
        chatmedia.c(a(chatmedia.mTimestamp.longValue()));
        chatmedia.a(StatefulChatFeedItem.SendReceiveStatus.SENDING);
        a(((ChatFeedItem) (chatmedia)));
        K();
        BusProvider.a().a(new ChatUpdatedEvent(mId));
    }

    public void a(ChatMessage chatmessage)
    {
        mFailedChatMessages.remove(chatmessage);
    }

    public void a(ConversationMessage conversationmessage)
    {
        synchronized (mSendingMessages)
        {
            mSendingMessages.add(conversationmessage);
        }
        return;
        exception;
        set;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(com.snapchat.android.model.server.chat.PresenceMessage.HereAuth hereauth)
    {
        mHereAuth = hereauth;
    }

    public void a(ReleaseMessage releasemessage)
    {
        if (ScTextUtils.a(releasemessage.getReleaseType(), com.snapchat.android.model.server.chat.ReleaseMessage.ReleaseType.DELETE.name()))
        {
            Map map = releasemessage.getKnownChatSequenceNumbers();
            long l1 = ((Long)map.get(mTheirUsername)).longValue();
            if (l1 > mLastSeqNumOfTheirChatIDeleted)
            {
                mLastSeqNumOfTheirChatIDeleted = l1;
            }
            long l2 = ((Long)map.get(mMyUsername)).longValue();
            if (l2 > mLastSeqNumOfMyChatIDeleted)
            {
                mLastSeqNumOfMyChatIDeleted = l2;
            }
            Map map1 = releasemessage.getKnownReceivedSnapsTs();
            long l3 = ((Long)map1.get(mTheirUsername)).longValue();
            if (l3 > mLastTimestampOfSentSnapReadReceiptIDeleted)
            {
                mLastTimestampOfSentSnapReadReceiptIDeleted = l3;
            }
            long l4 = ((Long)map1.get(mMyUsername)).longValue();
            if (l4 > mLastTimestampOfReceivedSnapReadReceiptIDeleted)
            {
                mLastTimestampOfReceivedSnapReadReceiptIDeleted = l4;
                return;
            }
        }
    }

    public void a(SignedPayload signedpayload)
    {
        mMessagingAuthToken = signedpayload;
        SlightlySecurePreferencesKey slightlysecurepreferenceskey = new SlightlySecurePreferencesKey((new StringBuilder()).append(SlightlySecurePreferencesKeys.b.a()).append(mTheirUsername).toString(), SlightlySecurePreferencesKeys.b.b());
        String s1;
        if (mMessagingAuthToken == null)
        {
            s1 = null;
        } else
        {
            s1 = mGsonWrapper.a(signedpayload);
        }
        mSlightlySecurePreferences.a(slightlysecurepreferenceskey, s1);
    }

    public void a(Collection collection)
    {
        mSendingChatFeedItemIds.clear();
        ChatFeedItem chatfeeditem;
        for (Iterator iterator = collection.iterator(); iterator.hasNext(); mSendingChatFeedItemIds.add(chatfeeditem.d()))
        {
            chatfeeditem = (ChatFeedItem)iterator.next();
        }

    }

    public void a(HashMap hashmap, List list, boolean flag)
    {
        ArrayList arraylist = new ArrayList();
        ArrayList arraylist1 = new ArrayList();
        ListIterator listiterator = list.listIterator();
        do
        {
            if (!listiterator.hasNext())
            {
                break;
            }
            ChatFeedItem chatfeeditem = (ChatFeedItem)listiterator.next();
            if (chatfeeditem instanceof CashFeedItem)
            {
                CashFeedItem cashfeeditem = (CashFeedItem)chatfeeditem;
                CashFeedItem cashfeeditem1 = CashUtils.a(this, (CashFeedItem)hashmap.remove(chatfeeditem.d()), cashfeeditem);
                if (cashfeeditem1 != null)
                {
                    listiterator.set(cashfeeditem1);
                    arraylist.add(cashfeeditem1);
                    if (CashUtils.a(mMyUsername, cashfeeditem1))
                    {
                        arraylist1.add(cashfeeditem1);
                    }
                }
            }
        } while (true);
        CashFeedItemTable.a(SnapchatApplication.e(), arraylist);
        if (flag && !mIsUserInConversation)
        {
            Collection collection = hashmap.values();
            for (Iterator iterator = collection.iterator(); iterator.hasNext(); CashUtils.a(this, (CashFeedItem)iterator.next(), null)) { }
            CashFeedItemTable.b(SnapchatApplication.e(), collection);
        }
        mSendingCashManager.b(this, arraylist1);
    }

    public void a(List list)
    {
        mChats.clear();
        mChats.addAll(list);
    }

    public void a(Set set)
    {
        mClearedChatIds = set;
    }

    public boolean a(String s1)
    {
        return mClearedChatIds.contains(s1);
    }

    public boolean a(boolean flag)
    {
        boolean flag1;
        ArrayList arraylist;
        ArrayList arraylist1;
        boolean flag2;
        flag1 = false;
        arraylist = new ArrayList();
        arraylist1 = new ArrayList();
        flag2 = false;
        List list = mChats;
        list;
        JVM INSTR monitorenter ;
        Iterator iterator;
        mChatsIterToken = null;
        iterator = mChats.iterator();
_L19:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        ChatFeedItem chatfeeditem;
        String s1;
        chatfeeditem = (ChatFeedItem)iterator.next();
        s1 = chatfeeditem.ap();
        if (!TextUtils.isEmpty(s1)) goto _L4; else goto _L3
_L3:
        String s2 = s1;
_L15:
        if ((!(chatfeeditem instanceof ISavableChatFeedItem) || !((ISavableChatFeedItem)chatfeeditem).k()) && chatfeeditem.at() && !chatfeeditem.V() && !chatfeeditem.W()) goto _L6; else goto _L5
_L5:
        if (!flag) goto _L8; else goto _L7
_L7:
        if (chatfeeditem.t()) goto _L6; else goto _L8
_L8:
        Object aobj[];
        aobj = new Object[4];
        aobj[0] = chatfeeditem.d();
        aobj[1] = mId;
        aobj[2] = s2;
        if (!(chatfeeditem instanceof Chat)) goto _L10; else goto _L9
_L9:
        long l1 = ((Chat)chatfeeditem).i();
_L20:
        aobj[3] = Long.valueOf(l1);
        Timber.f("ChatConversation", "CHAT-LOG: NOT clearing chat with id[%s] conv[%s] text[%s] seq_num[%d]", aobj);
        arraylist.add(chatfeeditem);
        if (flag2) goto _L12; else goto _L11
_L11:
        if (!(chatfeeditem instanceof IIterableChatFeedItem)) goto _L12; else goto _L13
_L13:
        mChatsIterToken = ((IIterableChatFeedItem)chatfeeditem).A();
        boolean flag3;
        boolean flag4;
        flag3 = true;
        flag4 = flag1;
          goto _L14
_L4:
        s2 = s1.substring(0, Math.min(3, s1.length()));
          goto _L15
_L6:
        Object aobj1[];
        long l2;
        aobj1 = new Object[4];
        aobj1[0] = chatfeeditem.d();
        aobj1[1] = mId;
        aobj1[2] = s2;
        if (!(chatfeeditem instanceof Chat))
        {
            break MISSING_BLOCK_LABEL_515;
        }
        l2 = ((Chat)chatfeeditem).i();
_L21:
        aobj1[3] = Long.valueOf(l2);
        Timber.f("ChatConversation", "CHAT-LOG: Clearing chat with id[%s] conv[%s] text[%s] seq_num[%d]", aobj1);
        mClearedChatIds.add(chatfeeditem.d());
        ClearedChatIdsTable.a(SnapchatApplication.e(), chatfeeditem.d(), mId);
        if (!(chatfeeditem instanceof ChatMedia)) goto _L17; else goto _L16
_L16:
        mMediaImageCache.d(chatfeeditem.d());
          goto _L18
_L17:
        if (chatfeeditem instanceof CashFeedItem)
        {
            arraylist1.add((CashFeedItem)chatfeeditem);
        }
          goto _L18
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
_L2:
        mChats.clear();
        mChats.addAll(arraylist);
        CashFeedItemTable.b(SnapchatApplication.e(), arraylist1);
        list;
        JVM INSTR monitorexit ;
        return flag1;
_L12:
        flag3 = flag2;
        flag4 = flag1;
_L14:
        flag2 = flag3;
        flag1 = flag4;
          goto _L19
_L10:
        l1 = -1L;
          goto _L20
_L18:
        flag4 = true;
        flag3 = flag2;
          goto _L14
        l2 = -1L;
          goto _L21
    }

    public boolean aA()
    {
label0:
        {
            synchronized (mChats)
            {
                Iterator iterator = mChats.iterator();
                do
                {
                    if (!iterator.hasNext())
                    {
                        break label0;
                    }
                } while (!((ChatFeedItem)iterator.next() instanceof ChatMedia));
            }
            return true;
        }
        list;
        JVM INSTR monitorexit ;
        return false;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean aB()
    {
        return mBeingCleared;
    }

    public boolean aC()
    {
        return mIsStub;
    }

    public boolean aD()
    {
        return mIsSavableConversation;
    }

    public boolean aE()
    {
        return mEnteredConversationFromRecentStoryReply;
    }

    public List aF()
    {
        ArrayList arraylist = new ArrayList();
        List list = mChats;
        list;
        JVM INSTR monitorenter ;
        Iterator iterator = mChats.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            ChatFeedItem chatfeeditem = (ChatFeedItem)iterator.next();
            if (chatfeeditem instanceof CashFeedItem)
            {
                CashFeedItem cashfeeditem = (CashFeedItem)chatfeeditem;
                CashTransaction cashtransaction = cashfeeditem.h();
                if (cashfeeditem.K() == StatefulChatFeedItem.SendReceiveStatus.RECEIVED && cashtransaction.o() == com.snapchat.android.model.CashTransaction.TransactionStatus.WAITING_ON_RECIPIENT)
                {
                    arraylist.add(cashfeeditem);
                }
            }
        } while (true);
        break MISSING_BLOCK_LABEL_109;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        list;
        JVM INSTR monitorexit ;
        return arraylist;
    }

    public int aG()
    {
        return mPendingRainBills;
    }

    public long aH()
    {
        return mPendingRainTransactionTimestamp;
    }

    public void aI()
    {
        mPendingRainBills = 0;
        mPendingRainTransactionTimestamp = 0L;
    }

    public long aa()
    {
        return mLastSeqNumOfTheirChatIDisplayed;
    }

    public long ab()
    {
        return mLastSeqNumOfTheirChatIReleased;
    }

    public long ac()
    {
        return mLastSeqNumOfMyChatTheyReleased;
    }

    public long ad()
    {
        return mLastSeqNumOfTheirChatIDeleted;
    }

    public long ae()
    {
        return mLastSeqNumOfMyChatIDeleted;
    }

    public long af()
    {
        return mLastTimestampOfSentSnapReadReceiptIDeleted;
    }

    public long ag()
    {
        return mLastTimestampOfSentSnapReadReceiptIReleased;
    }

    public long ah()
    {
        return mLastTimestampOfReceivedSnapReadReceiptIReleased;
    }

    public long ai()
    {
        return mLastTimestampOfReceivedSnapReadReceiptIDeleted;
    }

    public List aj()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(mTheirUsername);
        return arraylist;
    }

    public boolean ak()
    {
        return mHasUnreleasedReceivedChats;
    }

    public boolean al()
    {
        return mHasUnviewedCash;
    }

    public boolean am()
    {
        return mHasUnreleasedReceivedChats || mHasUnopenedReceivedSnaps || mHasUnviewedCash;
    }

    public boolean an()
    {
        return mMyLastSeqNum == 0L && mTheirLastSeqNum == 0L && mLastTimestampOfReceivedSnapReadReceiptIReleased == 0L && mLastTimestampOfSentSnapReadReceiptIReleased == 0L && mLastChatFromServer == null && mLastCashFromServer == null && (mLastSnapFromServer == null || mLastSnapFromServer.t() && P());
    }

    public boolean ao()
    {
label0:
        {
            synchronized (mChats)
            {
                Iterator iterator = mChats.iterator();
                do
                {
                    if (!iterator.hasNext())
                    {
                        break label0;
                    }
                } while (!((ChatFeedItem)iterator.next()).W());
            }
            return true;
        }
        list;
        JVM INSTR monitorexit ;
        return false;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean ap()
    {
label0:
        {
            synchronized (mChats)
            {
                Iterator iterator = mChats.iterator();
                ChatFeedItem chatfeeditem;
                do
                {
                    if (!iterator.hasNext())
                    {
                        break label0;
                    }
                    chatfeeditem = (ChatFeedItem)iterator.next();
                } while (!chatfeeditem.V() && !chatfeeditem.W());
            }
            return true;
        }
        list;
        JVM INSTR monitorexit ;
        return false;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void aq()
    {
        if (mLastChatFromServer == null && (mItemForFeedIcon instanceof Chat))
        {
            mLastChatFromServer = (Chat)mItemForFeedIcon;
        } else
        {
            if (mLastSnapFromServer == null && (mItemForFeedIcon instanceof Snap))
            {
                mLastSnapFromServer = (Snap)mItemForFeedIcon;
                return;
            }
            if (mLastCashFromServer == null && (mItemForFeedIcon instanceof CashFeedItem))
            {
                mLastCashFromServer = (CashFeedItem)mItemForFeedIcon;
                return;
            }
        }
    }

    public boolean ar()
    {
        return mHasUnviewedSnapsWithAudio;
    }

    public boolean as()
    {
        return mHasUnopenedReceivedSnaps;
    }

    public Chat at()
    {
        return mLastChatFromServer;
    }

    public Snap au()
    {
        return mLastSnapFromServer;
    }

    public CashFeedItem av()
    {
        return mLastCashFromServer;
    }

    public ChatFeedItem aw()
    {
        return mItemForFeedIcon;
    }

    public List ax()
    {
        return mItemsForFeedIcon;
    }

    public boolean ay()
    {
        while (mItemForFeedIcon == null || !mItemForFeedIcon.c()) 
        {
            return true;
        }
        return false;
    }

    public boolean az()
    {
        return mMessagingAuthToken != null;
    }

    public String b()
    {
        return mMyUsername;
    }

    public void b(long l1)
    {
        Iterator iterator = mPendingReceivedChats.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Chat chat = (Chat)iterator.next();
            if (chat.i() < l1)
            {
                a(chat);
                iterator.remove();
            }
        } while (true);
        synchronized (mChats)
        {
            Collections.sort(mChats);
        }
        return;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void b(SentSnap sentsnap)
    {
        n(sentsnap.d());
        mTimestamp = System.currentTimeMillis();
        mFailedSnaps.add(sentsnap);
        sentsnap.h();
        d(sentsnap);
    }

    public void b(Chat chat)
    {
        mLastChatFromServer = chat;
    }

    public void b(ChatFeedItem chatfeeditem)
    {
        synchronized (mChats)
        {
            mChats.remove(chatfeeditem);
        }
        return;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void b(ConversationMessage conversationmessage)
    {
        synchronized (mSendingMessages)
        {
            mSendingMessages.remove(conversationmessage);
        }
        return;
        exception;
        set;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void b(ReleaseMessage releasemessage)
    {
        mFailedReleaseMessages.add(releasemessage);
    }

    public void b(String s1)
    {
        mClearedChatIds.remove(s1);
        ClearedChatIdsTable.a(SnapchatApplication.e(), s1);
    }

    public void b(List list)
    {
        List list1 = mChats;
        list1;
        JVM INSTR monitorenter ;
        if (!mChats.isEmpty())
        {
            Iterator iterator = list.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                if (mChats.contains(iterator.next()))
                {
                    iterator.remove();
                }
            } while (true);
        }
        break MISSING_BLOCK_LABEL_71;
        Exception exception;
        exception;
        list1;
        JVM INSTR monitorexit ;
        throw exception;
        mChats.addAll(list);
        Collections.sort(mChats);
        list1;
        JVM INSTR monitorexit ;
    }

    public void b(Set set)
    {
        mClearedChatIds.addAll(set);
    }

    public void b(boolean flag)
    {
        if (mIsDisplayingVideo == flag)
        {
            return;
        } else
        {
            mIsDisplayingVideo = flag;
            SendingMailman.a().a(this, mAmIPresent, mIsRecipientPresent, mIsDisplayingVideo);
            return;
        }
    }

    public boolean b(ChatMessage chatmessage)
    {
label0:
        {
            synchronized (mChats)
            {
                Iterator iterator = mChats.iterator();
                do
                {
                    if (!iterator.hasNext())
                    {
                        break label0;
                    }
                } while (!((ChatFeedItem)iterator.next()).d().equals(chatmessage.getChatMessageId()));
            }
            return true;
        }
        list;
        JVM INSTR monitorexit ;
        return false;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public SentSnap c(String s1)
    {
label0:
        {
            SentSnap sentsnap;
            synchronized (mChats)
            {
                Iterator iterator = mChats.iterator();
                ChatFeedItem chatfeeditem;
                do
                {
                    if (!iterator.hasNext())
                    {
                        break label0;
                    }
                    chatfeeditem = (ChatFeedItem)iterator.next();
                } while (!(chatfeeditem instanceof SentSnap) || !TextUtils.equals(chatfeeditem.d(), s1));
                sentsnap = (SentSnap)chatfeeditem;
            }
            return sentsnap;
        }
        list;
        JVM INSTR monitorexit ;
        return null;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public String c()
    {
        return mTheirUsername;
    }

    public void c(long l1)
    {
        mTimestamp = l1;
    }

    public void c(SentSnap sentsnap)
    {
        l(sentsnap.d());
        mTimestamp = System.currentTimeMillis();
        mFailedSnaps.remove(sentsnap);
        d(sentsnap);
    }

    public void c(ChatFeedItem chatfeeditem)
    {
        mItemForFeedIcon = chatfeeditem;
    }

    public void c(ChatMessage chatmessage)
    {
        mFailedChatMessages.add(chatmessage);
    }

    public void c(List list)
    {
        synchronized (mChats)
        {
            mChats.removeAll(list);
        }
        return;
        exception;
        list1;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void c(boolean flag)
    {
        mIsUserInConversation = flag;
    }

    public int compareTo(Object obj)
    {
        return a((ChatConversation)obj);
    }

    public ChatFeedItem d(String s1)
    {
label0:
        {
            ChatFeedItem chatfeeditem;
            synchronized (mChats)
            {
                Iterator iterator = mChats.iterator();
                do
                {
                    if (!iterator.hasNext())
                    {
                        break label0;
                    }
                    chatfeeditem = (ChatFeedItem)iterator.next();
                } while (!s1.equals(chatfeeditem.d()));
            }
            return chatfeeditem;
        }
        list;
        JVM INSTR monitorexit ;
        return null;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void d(long l1)
    {
        if (l1 > mMyLastSeqNum)
        {
            mMyLastSeqNum = l1;
        }
    }

    public void d(List list)
    {
        mItemsForFeedIcon = list;
    }

    public void d(boolean flag)
    {
        mAmIPresent = flag;
        if (flag)
        {
            mHasUnreleasedReceivedChats = false;
            mHasUnviewedCash = false;
        } else
        {
            mIsDisplayingVideo = false;
        }
        R();
        SendingMailman.a().a(this, mAmIPresent, mIsRecipientPresent, mIsDisplayingVideo);
    }

    public boolean d()
    {
        return g() != null;
    }

    public int e()
    {
        int i1 = 0;
        List list = mChats;
        list;
        JVM INSTR monitorenter ;
        Iterator iterator = mChats.iterator();
_L3:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        ChatFeedItem chatfeeditem = (ChatFeedItem)iterator.next();
        int j1;
        Exception exception;
        if ((chatfeeditem instanceof ReceivedSnap) && !((ReceivedSnap)chatfeeditem).F())
        {
            j1 = i1 + 1;
        } else
        {
            j1 = i1;
        }
        break MISSING_BLOCK_LABEL_81;
_L2:
        list;
        JVM INSTR monitorexit ;
        return i1;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        i1 = j1;
          goto _L3
    }

    public CashFeedItem e(String s1)
    {
label0:
        {
            CashFeedItem cashfeeditem;
            synchronized (mChats)
            {
                Iterator iterator = mChats.iterator();
                ChatFeedItem chatfeeditem;
                do
                {
                    if (!iterator.hasNext())
                    {
                        break label0;
                    }
                    chatfeeditem = (ChatFeedItem)iterator.next();
                } while (!(chatfeeditem instanceof CashFeedItem) || !s1.equals(chatfeeditem.d()));
                cashfeeditem = (CashFeedItem)chatfeeditem;
            }
            return cashfeeditem;
        }
        list;
        JVM INSTR monitorexit ;
        return null;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void e(long l1)
    {
        if (l1 > mTheirLastSeqNum)
        {
            mTheirLastSeqNum = l1;
        }
    }

    public void e(boolean flag)
    {
        mIsRecipientPresent = flag;
        S();
    }

    public boolean equals(Object obj)
    {
        if (obj instanceof ChatConversation)
        {
            return mId.equals(((ChatConversation)obj).u());
        } else
        {
            return false;
        }
    }

    public ReceivedSnap f()
    {
        return g();
    }

    public Chat f(String s1)
    {
label0:
        {
            Chat chat;
            synchronized (mChats)
            {
                Iterator iterator = mChats.iterator();
                ChatFeedItem chatfeeditem;
                do
                {
                    if (!iterator.hasNext())
                    {
                        break label0;
                    }
                    chatfeeditem = (ChatFeedItem)iterator.next();
                } while (!(chatfeeditem instanceof Chat) || !s1.equals(chatfeeditem.d()));
                chat = (Chat)chatfeeditem;
            }
            return chat;
        }
        list;
        JVM INSTR monitorexit ;
        return null;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void f(long l1)
    {
        if (l1 > mTheirLastConnSeqNum)
        {
            mTheirLastConnSeqNum = l1;
        }
    }

    public void f(boolean flag)
    {
        mRecipientSupportsHere = flag;
    }

    public ReceivedSnap g()
    {
        ReceivedSnap receivedsnap;
        mSecondsLeftInUnviewedSnaps = 0;
        receivedsnap = null;
        mHasUnviewedSnapsWithAudio = false;
        mHasUnopenedReceivedSnaps = false;
        List list = mChats;
        list;
        JVM INSTR monitorenter ;
        Iterator iterator = mChats.iterator();
_L9:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        ChatFeedItem chatfeeditem = (ChatFeedItem)iterator.next();
        if (!(chatfeeditem instanceof ReceivedSnap) || ((ReceivedSnap)chatfeeditem).F()) goto _L4; else goto _L3
_L3:
        ReceivedSnap receivedsnap2 = (ReceivedSnap)chatfeeditem;
        if (receivedsnap != null) goto _L6; else goto _L5
_L5:
        ReceivedSnap receivedsnap3 = receivedsnap2;
_L8:
        if (receivedsnap2.an())
        {
            mHasUnviewedSnapsWithAudio = true;
        }
        mHasUnopenedReceivedSnaps = true;
        ReceivedSnap receivedsnap1;
        receivedsnap1 = receivedsnap3;
        break; /* Loop/switch isn't completed */
_L6:
        mSecondsLeftInUnviewedSnaps = (int)((double)mSecondsLeftInUnviewedSnaps + receivedsnap2.M());
        receivedsnap3 = receivedsnap;
        if (true) goto _L8; else goto _L7
_L2:
        list;
        JVM INSTR monitorexit ;
        return receivedsnap;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
_L4:
        receivedsnap1 = receivedsnap;
_L7:
        receivedsnap = receivedsnap1;
          goto _L9
    }

    public Chat g(String s1)
    {
label0:
        {
            Chat chat;
            synchronized (mChats)
            {
                Iterator iterator = mChats.iterator();
                do
                {
                    ChatFeedItem chatfeeditem;
                    do
                    {
                        if (!iterator.hasNext())
                        {
                            break label0;
                        }
                        chatfeeditem = (ChatFeedItem)iterator.next();
                    } while (!(chatfeeditem instanceof Chat));
                    chat = (Chat)chatfeeditem;
                } while (!s1.equals(chat.h()));
            }
            return chat;
        }
        list;
        JVM INSTR monitorexit ;
        return null;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void g(long l1)
    {
        mLastSeqNumOfTheirChatIDisplayed = l1;
    }

    public void g(boolean flag)
    {
        if (!mAmIPresent)
        {
            mHasUnreleasedReceivedChats = flag;
        }
    }

    public ConversationMessage h(String s1)
    {
label0:
        {
            ConversationMessage conversationmessage;
            synchronized (mSendingMessages)
            {
                Iterator iterator = mSendingMessages.iterator();
                do
                {
                    if (!iterator.hasNext())
                    {
                        break label0;
                    }
                    conversationmessage = (ConversationMessage)iterator.next();
                } while (!TextUtils.equals(conversationmessage.getId(), s1));
            }
            return conversationmessage;
        }
        set;
        JVM INSTR monitorexit ;
        return null;
        exception;
        set;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public SignedPayload h()
    {
        return mMessagingAuthToken;
    }

    public void h(long l1)
    {
        mLastSeqNumOfTheirChatIReleased = l1;
    }

    public void h(boolean flag)
    {
        mHasUnviewedCash = flag;
    }

    public int hashCode()
    {
        return mId.hashCode();
    }

    public ReceivedSnap i()
    {
        ReceivedSnap receivedsnap = null;
        List list = mChats;
        list;
        JVM INSTR monitorenter ;
        Iterator iterator = mChats.iterator();
_L5:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        ChatFeedItem chatfeeditem = (ChatFeedItem)iterator.next();
        if (!(chatfeeditem instanceof ReceivedSnap) || ((ReceivedSnap)chatfeeditem).F() || ((ReceivedSnap)chatfeeditem).D()) goto _L4; else goto _L3
_L3:
        ReceivedSnap receivedsnap1 = (ReceivedSnap)chatfeeditem;
        if (receivedsnap == null)
        {
            break MISSING_BLOCK_LABEL_98;
        }
          goto _L4
_L2:
        list;
        JVM INSTR monitorexit ;
        return receivedsnap;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
_L4:
        receivedsnap1 = receivedsnap;
        receivedsnap = receivedsnap1;
          goto _L5
    }

    public SentSnap i(String s1)
    {
label0:
        {
            SentSnap sentsnap;
            synchronized (mChats)
            {
                String s2 = SnapUtils.b(s1);
                Iterator iterator = mChats.iterator();
                do
                {
                    ChatFeedItem chatfeeditem;
                    do
                    {
                        if (!iterator.hasNext())
                        {
                            break label0;
                        }
                        chatfeeditem = (ChatFeedItem)iterator.next();
                    } while (!(chatfeeditem instanceof SentSnap));
                    sentsnap = (SentSnap)chatfeeditem;
                } while (!TextUtils.equals(s2, SnapUtils.b(sentsnap.ak())));
            }
            return sentsnap;
        }
        list;
        JVM INSTR monitorexit ;
        return null;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void i(long l1)
    {
        mLastSeqNumOfMyChatTheyReleased = l1;
    }

    public void i(boolean flag)
    {
        mHasUnviewedSnapsWithAudio = flag;
    }

    public int j()
    {
        return mSecondsLeftInUnviewedSnaps;
    }

    public void j(long l1)
    {
        mLastSeqNumOfTheirChatIDeleted = l1;
    }

    public void j(String s1)
    {
        mIterToken = s1;
    }

    public void j(boolean flag)
    {
        mHasUnopenedReceivedSnaps = flag;
    }

    public void k()
    {
        mNumTCPChatMessagesSendingOrSent = 1 + mNumTCPChatMessagesSendingOrSent;
        mLastTCPMessageSentTimestamp = SystemClock.elapsedRealtime();
    }

    public void k(long l1)
    {
        mLastSeqNumOfMyChatIDeleted = l1;
    }

    public void k(String s1)
    {
        mChatsIterToken = s1;
    }

    public void k(boolean flag)
    {
        if (mAmITyping != flag)
        {
            mAmITyping = flag;
            if (flag && !mIsNotifyingRecipientAboutTyping)
            {
                (new TellThemIAmTypingTask(this)).g();
            }
        }
    }

    public void l()
    {
        mNumTCPChatMessagesSendingOrSent = -1 + mNumTCPChatMessagesSendingOrSent;
    }

    public void l(long l1)
    {
        mLastTimestampOfSentSnapReadReceiptIDeleted = l1;
    }

    public void l(String s1)
    {
        mSendingChatFeedItemIds.add(s1);
        Timber.c("ChatConversation", "Message marked as Sending. Adding [%s] to sending ID list", new Object[] {
            s1
        });
        mTimestamp = System.currentTimeMillis();
        ChatConversationManager.a().f();
        BusProvider.a().a(new UpdateFeedEvent());
    }

    public void l(boolean flag)
    {
        mIsNotifyingRecipientAboutTyping = flag;
    }

    public void m()
    {
        mNumTCPChatMessagesSendingOrSent = 0;
        mLastTCPMessageSentTimestamp = 0L;
    }

    public void m(long l1)
    {
        mLastTimestampOfSentSnapReadReceiptIReleased = l1;
    }

    public void m(String s1)
    {
        mSendingChatFeedItemIds.remove(s1);
        Timber.c("ChatConversation", "Message marked as Sent. Removing [%s] from sending ID list", new Object[] {
            s1
        });
        BusProvider.a().a(new UpdateFeedEvent());
    }

    public void m(boolean flag)
    {
        mBeingCleared = flag;
    }

    public long n()
    {
        long l1 = 1L + mMyLastSeqNum;
        mMyLastSeqNum = l1;
        return l1;
    }

    public void n(long l1)
    {
        mLastTimestampOfReceivedSnapReadReceiptIReleased = l1;
    }

    public void n(boolean flag)
    {
        mIsStub = flag;
    }

    public long o()
    {
        long l1 = 1L + mMyLastConnSeqNum;
        mMyLastConnSeqNum = l1;
        return l1;
    }

    public void o(long l1)
    {
        mLastTimestampOfReceivedSnapReadReceiptIDeleted = l1;
    }

    public void o(boolean flag)
    {
        mIsSavableConversation = flag;
    }

    public SequenceNumberState p()
    {
        return mSequenceNumberState;
    }

    public void p(boolean flag)
    {
        mEnteredConversationFromRecentStoryReply = flag;
    }

    public ReceivedSnap q()
    {
label0:
        {
            ReceivedSnap receivedsnap;
            synchronized (mChats)
            {
                Iterator iterator = mChats.iterator();
                ChatFeedItem chatfeeditem;
                do
                {
                    if (!iterator.hasNext())
                    {
                        break label0;
                    }
                    chatfeeditem = (ChatFeedItem)iterator.next();
                } while (!(chatfeeditem instanceof Snap) || !((Snap)chatfeeditem).au());
                receivedsnap = (ReceivedSnap)chatfeeditem;
            }
            return receivedsnap;
        }
        list;
        JVM INSTR monitorexit ;
        return null;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void r()
    {
        List list = mChats;
        list;
        JVM INSTR monitorenter ;
        Iterator iterator = mChats.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            ChatFeedItem chatfeeditem = (ChatFeedItem)iterator.next();
            if ((chatfeeditem instanceof ReceivedSnap) && ((ReceivedSnap)chatfeeditem).au())
            {
                ((ReceivedSnap)chatfeeditem).x();
            }
        } while (true);
        break MISSING_BLOCK_LABEL_72;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        list;
        JVM INSTR monitorexit ;
    }

    public List s()
    {
        synchronized (mChats)
        {
            Collections.sort(mChats);
        }
        return mChats;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public List t()
    {
        return mChats;
    }

    public String u()
    {
        return mId;
    }

    public com.snapchat.android.model.server.chat.PresenceMessage.HereAuth v()
    {
        return mHereAuth;
    }

    public void w()
    {
        boolean flag;
label0:
        {
            if (!mHasUnreleasedReceivedChats)
            {
                boolean flag1 = mHasUnviewedCash;
                flag = false;
                if (!flag1)
                {
                    break label0;
                }
            }
            mHasUnreleasedReceivedChats = false;
            mHasUnviewedCash = false;
            flag = true;
        }
        if (a(true) || flag)
        {
            BusProvider.a().a(new UpdateFeedEvent());
        }
    }

    public void x()
    {
        List list = mChats;
        list;
        JVM INSTR monitorenter ;
        Iterator iterator = mChats.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            ChatFeedItem chatfeeditem = (ChatFeedItem)iterator.next();
            String s1 = chatfeeditem.d();
            if ((chatfeeditem instanceof ChatMedia) || (chatfeeditem instanceof SentSnap) || (chatfeeditem instanceof ReceivedSnap))
            {
                Caches.i.d(s1);
                Caches.a.d(s1);
                Caches.k.d(s1);
                Caches.e.d(s1);
                Caches.f.d(s1);
            }
        } while (true);
        break MISSING_BLOCK_LABEL_118;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        list;
        JVM INSTR monitorexit ;
    }

    public boolean y()
    {
        return mChats.isEmpty() && mSendingMessages.isEmpty() && mFailedChatMessages.isEmpty();
    }

    public boolean z()
    {
        return mIsDisplayingVideo;
    }
}
