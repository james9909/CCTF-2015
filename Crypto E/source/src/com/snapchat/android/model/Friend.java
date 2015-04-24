// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;

import android.text.TextUtils;
import com.snapchat.android.Timber;
import com.snapchat.android.api.GetSharedStoryDescriptionTask;
import com.snapchat.android.fragments.sendto.SendToItem;
import com.snapchat.android.fragments.stories.StoriesListItem;
import com.snapchat.android.model.server.ServerFriend;
import com.snapchat.android.util.FriendSectionizer;
import com.snapchat.android.util.FriendUtils;
import com.snapchat.android.util.PrimitiveUtils;
import com.snapchat.android.util.ScExecutors;
import com.snapchat.android.util.ScTextUtils;
import java.util.Locale;
import java.util.Set;

// Referenced classes of package com.snapchat.android.model:
//            FriendAction, UserPrefs, StoryLibrary, User

public class Friend
    implements SendToItem, StoriesListItem, Comparable
{
    public static final class AddSourceType extends Enum
    {

        private static final AddSourceType $VALUES[];
        public static final AddSourceType ADDED_BY_ADDED_ME_BACK;
        public static final AddSourceType ADDED_BY_PHONE;
        public static final AddSourceType ADDED_BY_QR_CODE;
        public static final AddSourceType ADDED_BY_USERNAME;
        public static final AddSourceType UNKNOWN;

        public static AddSourceType a(String s1)
        {
            if (TextUtils.isEmpty(s1))
            {
                break MISSING_BLOCK_LABEL_43;
            }
            AddSourceType addsourcetype = valueOf(s1);
            return addsourcetype;
            Exception exception;
            exception;
            Timber.e("Friend", (new StringBuilder()).append("Invalid enum for AddSourceType ").append(exception).toString(), new Object[0]);
            return UNKNOWN;
        }

        public static AddSourceType valueOf(String s1)
        {
            return (AddSourceType)Enum.valueOf(com/snapchat/android/model/Friend$AddSourceType, s1);
        }

        public static AddSourceType[] values()
        {
            return (AddSourceType[])$VALUES.clone();
        }

        public String a()
        {
            return name();
        }

        static 
        {
            ADDED_BY_PHONE = new AddSourceType("ADDED_BY_PHONE", 0);
            ADDED_BY_USERNAME = new AddSourceType("ADDED_BY_USERNAME", 1);
            ADDED_BY_QR_CODE = new AddSourceType("ADDED_BY_QR_CODE", 2);
            ADDED_BY_ADDED_ME_BACK = new AddSourceType("ADDED_BY_ADDED_ME_BACK", 3);
            UNKNOWN = new AddSourceType("UNKNOWN", 4);
            AddSourceType aaddsourcetype[] = new AddSourceType[5];
            aaddsourcetype[0] = ADDED_BY_PHONE;
            aaddsourcetype[1] = ADDED_BY_USERNAME;
            aaddsourcetype[2] = ADDED_BY_QR_CODE;
            aaddsourcetype[3] = ADDED_BY_ADDED_ME_BACK;
            aaddsourcetype[4] = UNKNOWN;
            $VALUES = aaddsourcetype;
        }

        private AddSourceType(String s1, int i1)
        {
            super(s1, i1);
        }
    }

    public static final class Direction extends Enum
    {

        private static final Direction $VALUES[];
        public static final Direction BOTH;
        public static final Direction INCOMING;
        public static final Direction OUTGOING;
        public static final Direction UNKNOWN;

        public static Direction a(String s1)
        {
            Direction direction;
            try
            {
                direction = valueOf(s1);
            }
            catch (Exception exception)
            {
                return UNKNOWN;
            }
            return direction;
        }

        public static Direction valueOf(String s1)
        {
            return (Direction)Enum.valueOf(com/snapchat/android/model/Friend$Direction, s1);
        }

        public static Direction[] values()
        {
            return (Direction[])$VALUES.clone();
        }

        static 
        {
            UNKNOWN = new Direction("UNKNOWN", 0);
            INCOMING = new Direction("INCOMING", 1);
            OUTGOING = new Direction("OUTGOING", 2);
            BOTH = new Direction("BOTH", 3);
            Direction adirection[] = new Direction[4];
            adirection[0] = UNKNOWN;
            adirection[1] = INCOMING;
            adirection[2] = OUTGOING;
            adirection[3] = BOTH;
            $VALUES = adirection;
        }

        private Direction(String s1, int i1)
        {
            super(s1, i1);
        }
    }

    public static class FriendListSectionizer extends FriendSectionizer
    {

        public com.snapchat.android.util.FriendSectionizer.FriendSection a(Friend friend, int i1)
        {
            if (friend.v() && friend.G())
            {
                return com.snapchat.android.util.FriendSectionizer.FriendSection.BEST_FRIEND;
            }
            if (friend.w() && friend.G())
            {
                return com.snapchat.android.util.FriendSectionizer.FriendSection.RECENT;
            }
            if (friend.a().equals(UserPrefs.k()) && friend.G())
            {
                return com.snapchat.android.util.FriendSectionizer.FriendSection.ME;
            }
            if (friend.G())
            {
                return com.snapchat.android.util.FriendSectionizer.FriendSection.STORIES;
            }
            if (friend.F())
            {
                return com.snapchat.android.util.FriendSectionizer.FriendSection.JUST_ADDED;
            }
            if (friend.E())
            {
                return com.snapchat.android.util.FriendSectionizer.FriendSection.SUGGESTED;
            }
            if (friend.x())
            {
                return com.snapchat.android.util.FriendSectionizer.FriendSection.BLOCKED;
            } else
            {
                return com.snapchat.android.util.FriendSectionizer.FriendSection.ALPHABETICAL;
            }
        }

        public volatile com.snapchat.android.util.FriendSectionizer.FriendSection a(Object obj, int i1)
        {
            return a((Friend)obj, i1);
        }

        public FriendListSectionizer()
        {
        }
    }

    public static final class SuggestState extends Enum
    {

        private static final SuggestState $VALUES[];
        public static final SuggestState ADDRESS_BOOK;
        public static final SuggestState DOES_NOT_EXIST;
        public static final SuggestState EXISTS;
        public static final SuggestState FAILED;
        public static final SuggestState NOT_SUGGESTION;
        public static final SuggestState PENDING;

        public static SuggestState valueOf(String s1)
        {
            return (SuggestState)Enum.valueOf(com/snapchat/android/model/Friend$SuggestState, s1);
        }

        public static SuggestState[] values()
        {
            return (SuggestState[])$VALUES.clone();
        }

        static 
        {
            NOT_SUGGESTION = new SuggestState("NOT_SUGGESTION", 0);
            PENDING = new SuggestState("PENDING", 1);
            FAILED = new SuggestState("FAILED", 2);
            EXISTS = new SuggestState("EXISTS", 3);
            DOES_NOT_EXIST = new SuggestState("DOES_NOT_EXIST", 4);
            ADDRESS_BOOK = new SuggestState("ADDRESS_BOOK", 5);
            SuggestState asuggeststate[] = new SuggestState[6];
            asuggeststate[0] = NOT_SUGGESTION;
            asuggeststate[1] = PENDING;
            asuggeststate[2] = FAILED;
            asuggeststate[3] = EXISTS;
            asuggeststate[4] = DOES_NOT_EXIST;
            asuggeststate[5] = ADDRESS_BOOK;
            $VALUES = asuggeststate;
        }

        private SuggestState(String s1, int i1)
        {
            super(s1, i1);
        }
    }

    public static final class SuggestType extends Enum
    {

        private static final SuggestType $VALUES[];
        public static final SuggestType ADDRESS_BOOK;
        public static final SuggestType NONE;
        public static final SuggestType USERNAME;

        public static SuggestType valueOf(String s1)
        {
            return (SuggestType)Enum.valueOf(com/snapchat/android/model/Friend$SuggestType, s1);
        }

        public static SuggestType[] values()
        {
            return (SuggestType[])$VALUES.clone();
        }

        static 
        {
            USERNAME = new SuggestType("USERNAME", 0);
            ADDRESS_BOOK = new SuggestType("ADDRESS_BOOK", 1);
            NONE = new SuggestType("NONE", 2);
            SuggestType asuggesttype[] = new SuggestType[3];
            asuggesttype[0] = USERNAME;
            asuggesttype[1] = ADDRESS_BOOK;
            asuggesttype[2] = NONE;
            $VALUES = asuggesttype;
        }

        private SuggestType(String s1, int i1)
        {
            super(s1, i1);
        }
    }


    private static final String TAG = "Friend";
    private FriendAction mActionState;
    private String mAddSource;
    private AddSourceType mAddSourceType;
    private int mBestFriendIndex;
    private com.snapchat.android.api2.cash.ScCashResponsePayload.Status mCashEligibility;
    private String mCustomDescription;
    private String mCustomTitle;
    private Direction mDirection;
    private String mDisplayName;
    private com.snapchat.android.util.FriendSectionizer.FriendSection mFriendSection;
    private boolean mHasBeenAddedAsFriend;
    private long mIAddedThemTimestamp;
    private boolean mIsBlocked;
    private boolean mIsHidden;
    private boolean mIsIgnored;
    private boolean mIsLocalStory;
    private boolean mIsPending;
    private boolean mIsRecent;
    private boolean mIsSharedStory;
    private boolean mJustAdded;
    private int mPendingSnapsCount;
    private String mPhoneNumber;
    private String mSharedStoryId;
    private boolean mShouldFetchCustomDescription;
    private boolean mStubFriend;
    private SuggestType mSuggestType;
    private SuggestState mSuggestionState;
    private long mTheyAddedMeTimestamp;
    private String mUsername;

    protected Friend(ServerFriend serverfriend)
    {
        this(serverfriend.username, serverfriend.display);
        if (serverfriend.type == 2)
        {
            mIsBlocked = true;
            return;
        } else
        {
            mTheyAddedMeTimestamp = PrimitiveUtils.a(serverfriend.ts);
            mPendingSnapsCount = serverfriend.mPendingSnapsCount;
            mIsSharedStory = serverfriend.mIsSharedStory;
            mShouldFetchCustomDescription = serverfriend.mShouldFetchCustomDescription;
            mSharedStoryId = serverfriend.mSharedStoryId;
            mIsLocalStory = serverfriend.mIsLocalStory;
            mIsIgnored = serverfriend.mIsIgnored;
            mIsHidden = serverfriend.mIsHidden;
            mAddSource = serverfriend.mAddSource;
            mAddSourceType = AddSourceType.a(serverfriend.mAddSourceType);
            a(serverfriend.direction, serverfriend.type);
            return;
        }
    }

    public Friend(ServerFriend serverfriend, User user)
    {
        this(serverfriend);
        if (FriendUtils.e(a(), user))
        {
            mHasBeenAddedAsFriend = true;
        }
    }

    public Friend(ServerFriend serverfriend, Set set)
    {
        this(serverfriend);
        if (set.contains(a()))
        {
            mHasBeenAddedAsFriend = true;
        }
    }

    public Friend(com.snapchat.data.gson.Friend friend)
    {
        this(friend.a(), friend.c());
        if (PrimitiveUtils.a(friend.b()) == 2)
        {
            mIsBlocked = true;
            return;
        } else
        {
            mTheyAddedMeTimestamp = PrimitiveUtils.a(friend.d());
            mPendingSnapsCount = PrimitiveUtils.a(friend.f());
            mIsSharedStory = PrimitiveUtils.a(friend.g());
            mShouldFetchCustomDescription = PrimitiveUtils.a(friend.h());
            mSharedStoryId = friend.i();
            mIsLocalStory = PrimitiveUtils.a(friend.j());
            mIsIgnored = PrimitiveUtils.a(friend.k());
            mIsHidden = PrimitiveUtils.a(friend.l());
            mDirection = Direction.a(friend.e());
            mAddSource = friend.m();
            mAddSourceType = AddSourceType.a(friend.n());
            a(friend.e(), friend.b().intValue());
            return;
        }
    }

    public Friend(String s1)
    {
        this(s1, "");
    }

    public Friend(String s1, String s2)
    {
        this(s1, s2, "");
    }

    public Friend(String s1, String s2, String s3)
    {
        mSuggestionState = SuggestState.NOT_SUGGESTION;
        mSuggestType = SuggestType.NONE;
        mJustAdded = false;
        mHasBeenAddedAsFriend = false;
        mIAddedThemTimestamp = 0L;
        mBestFriendIndex = -1;
        mActionState = FriendAction.NONE;
        mDirection = Direction.UNKNOWN;
        mAddSourceType = AddSourceType.UNKNOWN;
        mFriendSection = com.snapchat.android.util.FriendSectionizer.FriendSection.NONE;
        mStubFriend = false;
        if (s1 == null)
        {
            s1 = "";
        }
        mUsername = s1;
        if (s2 == null)
        {
            s2 = "";
        }
        mDisplayName = s2;
        mPhoneNumber = s3;
    }

    public boolean A()
    {
        return TextUtils.equals(mUsername, UserPrefs.k());
    }

    public SuggestType B()
    {
        return mSuggestType;
    }

    public boolean C()
    {
        return mSuggestType != SuggestType.NONE;
    }

    public SuggestState D()
    {
        return mSuggestionState;
    }

    public boolean E()
    {
        return mSuggestionState != SuggestState.NOT_SUGGESTION;
    }

    public boolean F()
    {
        return mJustAdded;
    }

    public boolean G()
    {
        return mStubFriend;
    }

    public boolean H()
    {
        return mIsSharedStory;
    }

    public boolean I()
    {
        return mIsSharedStory || mIsLocalStory;
    }

    public boolean J()
    {
        return mIsLocalStory;
    }

    public boolean K()
    {
        return mIsIgnored;
    }

    public boolean L()
    {
        return mIsHidden;
    }

    public com.snapchat.android.api2.cash.ScCashResponsePayload.Status M()
    {
        if (mCashEligibility == null)
        {
            mCashEligibility = com.snapchat.android.api2.cash.ScCashResponsePayload.Status.SERVICE_NOT_AVAILABLE_TO_RECIPIENT;
        }
        return mCashEligibility;
    }

    public void N()
    {
        if ((mIsSharedStory || mIsLocalStory) && mShouldFetchCustomDescription)
        {
            (new GetSharedStoryDescriptionTask(mSharedStoryId)).executeOnExecutor(ScExecutors.b, new String[0]);
        }
    }

    public FriendAction O()
    {
        return mActionState;
    }

    public Direction P()
    {
        return mDirection;
    }

    public com.snapchat.android.util.FriendSectionizer.FriendSection Q()
    {
        return mFriendSection;
    }

    public String R()
    {
        return mAddSource;
    }

    public AddSourceType S()
    {
        return mAddSourceType;
    }

    public int a(Friend friend)
    {
        return ScTextUtils.b(o().toLowerCase(Locale.US), friend.o().toLowerCase(Locale.US));
    }

    public String a()
    {
        if (mUsername == null)
        {
            throw new NullPointerException();
        } else
        {
            return mUsername;
        }
    }

    public void a(int i1)
    {
        mBestFriendIndex = i1;
    }

    public void a(long l1)
    {
        mTheyAddedMeTimestamp = l1;
    }

    public void a(com.snapchat.android.api2.cash.ScCashResponsePayload.Status status)
    {
        mCashEligibility = status;
    }

    public void a(AddSourceType addsourcetype)
    {
        mAddSourceType = addsourcetype;
    }

    public void a(Direction direction)
    {
        mDirection = direction;
    }

    public void a(SuggestState suggeststate)
    {
        mSuggestionState = suggeststate;
    }

    public void a(SuggestType suggesttype)
    {
        mSuggestType = suggesttype;
    }

    public void a(FriendAction friendaction)
    {
        mActionState = friendaction;
    }

    public void a(com.snapchat.android.util.FriendSectionizer.FriendSection friendsection)
    {
        mFriendSection = friendsection;
    }

    public void a(String s1)
    {
        mCustomTitle = s1;
    }

    protected void a(String s1, int i1)
    {
        mDirection = Direction.a(s1);
        if (mDirection == Direction.OUTGOING && i1 == 0)
        {
            mDirection = Direction.BOTH;
        }
    }

    public void a(boolean flag)
    {
        mShouldFetchCustomDescription = flag;
    }

    public String b()
    {
        return mDisplayName;
    }

    public void b(long l1)
    {
        mIAddedThemTimestamp = l1;
    }

    public void b(String s1)
    {
        mCustomDescription = s1;
    }

    public void b(boolean flag)
    {
        mHasBeenAddedAsFriend = flag;
    }

    public void c(String s1)
    {
        mSharedStoryId = s1;
    }

    public void c(boolean flag)
    {
        mIsRecent = flag;
    }

    public int compareTo(Object obj)
    {
        return a((Friend)obj);
    }

    public void d(String s1)
    {
        mDisplayName = s1;
    }

    public void d(boolean flag)
    {
        mIsBlocked = flag;
    }

    public void e(String s1)
    {
        if (s1 == null)
        {
            s1 = "";
        }
        mUsername = s1;
    }

    public void e(boolean flag)
    {
        mIsPending = flag;
    }

    public boolean e()
    {
        return mHasBeenAddedAsFriend;
    }

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (!(obj instanceof Friend))
        {
            return false;
        }
        Friend friend = (Friend)obj;
        if (TextUtils.isEmpty(mUsername))
        {
            return TextUtils.equals(mPhoneNumber, friend.u());
        } else
        {
            return TextUtils.equals(mUsername, friend.a());
        }
    }

    public String f()
    {
        return o();
    }

    public void f(String s1)
    {
        mPhoneNumber = s1;
    }

    public void f(boolean flag)
    {
        mJustAdded = flag;
    }

    public void g(String s1)
    {
        mAddSource = s1;
    }

    public void g(boolean flag)
    {
        mStubFriend = flag;
    }

    public boolean g()
    {
        return StoryLibrary.a().c(mUsername) != null;
    }

    public com.snapchat.android.util.BuildPieSliceTask.StoryThumbnailType h()
    {
        if (mIsSharedStory)
        {
            return com.snapchat.android.util.BuildPieSliceTask.StoryThumbnailType.c;
        } else
        {
            return com.snapchat.android.util.BuildPieSliceTask.StoryThumbnailType.b;
        }
    }

    public void h(boolean flag)
    {
        mIsSharedStory = flag;
    }

    public int hashCode()
    {
        return mUsername.hashCode();
    }

    public long i()
    {
        return mTheyAddedMeTimestamp;
    }

    public void i(boolean flag)
    {
        mIsLocalStory = flag;
    }

    public long j()
    {
        return mIAddedThemTimestamp;
    }

    public void j(boolean flag)
    {
        mIsIgnored = flag;
    }

    public void k(boolean flag)
    {
        mIsHidden = flag;
    }

    public boolean k()
    {
        return mShouldFetchCustomDescription;
    }

    public String l()
    {
        return mCustomTitle;
    }

    public String m()
    {
        return mCustomDescription;
    }

    public String n()
    {
        return mSharedStoryId;
    }

    public String o()
    {
        if (TextUtils.isEmpty(mDisplayName))
        {
            return mUsername;
        } else
        {
            return mDisplayName;
        }
    }

    public String p()
    {
        if (TextUtils.isEmpty(mDisplayName))
        {
            return mUsername;
        }
        String as[] = mDisplayName.split(" ");
        if (as.length < 1)
        {
            return mUsername;
        } else
        {
            return as[0];
        }
    }

    public String q()
    {
        String s1 = p();
        User user = User.c();
        if (user == null || user.a(s1))
        {
            s1 = o();
        }
        return s1;
    }

    public int r()
    {
        return mBestFriendIndex;
    }

    public boolean r_()
    {
        return !TextUtils.isEmpty(mDisplayName);
    }

    public boolean s()
    {
        return !TextUtils.isEmpty(mUsername);
    }

    public boolean t()
    {
        return !TextUtils.isEmpty(mPhoneNumber);
    }

    public String toString()
    {
        return (new StringBuilder()).append("Friend [mDisplayName=").append(mDisplayName).append(", mUsername=").append(mUsername).append("]").toString();
    }

    public String u()
    {
        return mPhoneNumber;
    }

    public boolean v()
    {
        return mBestFriendIndex >= 0;
    }

    public boolean w()
    {
        return mIsRecent;
    }

    public boolean x()
    {
        return mIsBlocked;
    }

    public boolean y()
    {
        return mIsPending;
    }

    public int z()
    {
        return mPendingSnapsCount;
    }
}
