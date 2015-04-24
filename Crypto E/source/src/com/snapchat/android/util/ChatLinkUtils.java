// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.telephony.PhoneNumberUtils;
import android.text.Html;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.URLSpan;
import android.util.Patterns;
import android.webkit.WebView;
import android.widget.TextView;
import com.google.i18n.phonenumbers.PhoneNumberMatch;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.snapchat.android.model.chat.Chat;
import com.snapchat.android.model.chat.ChatText;
import com.snapchat.android.model.chat.ChatUnknown;
import com.snapchat.android.model.chat.ISavableChatFeedItem;
import com.snapchat.android.ui.FixTouchConsumeTextView;
import com.snapchat.android.util.chat.SnapchatUrlSpan;
import com.snapchat.android.util.chat.UrlType;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.snapchat.android.util:
//            LinkSpec

public class ChatLinkUtils
{
    public static interface MatchFilter
    {

        public abstract boolean a(CharSequence charsequence, int i, int j);
    }

    public static interface TransformFilter
    {

        public abstract String a(Matcher matcher, String s);
    }


    public static final MatchFilter a = new MatchFilter() {

        public final boolean a(CharSequence charsequence, int i, int j)
        {
            while (i == 0 || charsequence.charAt(i - 1) != '@') 
            {
                return true;
            }
            return false;
        }

    };

    public ChatLinkUtils()
    {
    }

    private static final String a(String s, String as[], Matcher matcher, TransformFilter transformfilter)
    {
        boolean flag = true;
        if (transformfilter == null) goto _L2; else goto _L1
_L1:
        String s1 = transformfilter.a(matcher, s);
_L5:
        return s1;
_L2:
        int i = 0;
_L6:
        if (i >= as.length)
        {
            break MISSING_BLOCK_LABEL_145;
        }
        if (!s.regionMatches(flag, 0, as[i], 0, as[i].length())) goto _L4; else goto _L3
_L3:
        if (!s.regionMatches(false, 0, as[i], 0, as[i].length()))
        {
            s1 = (new StringBuilder()).append(as[i]).append(s.substring(as[i].length())).toString();
        } else
        {
            s1 = s;
        }
_L7:
        if (!flag)
        {
            return (new StringBuilder()).append(as[0]).append(s1).toString();
        }
          goto _L5
_L4:
        i++;
          goto _L6
        s1 = s;
        flag = false;
          goto _L7
    }

    private static final void a(TextView textview)
    {
        android.text.method.MovementMethod movementmethod = textview.getMovementMethod();
        if ((movementmethod == null || !(movementmethod instanceof LinkMovementMethod)) && textview.getLinksClickable())
        {
            textview.setMovementMethod(LinkMovementMethod.getInstance());
        }
    }

    private static final void a(ISavableChatFeedItem isavablechatfeeditem, UrlType urltype, String s, int i, int j, Spannable spannable)
    {
        spannable.setSpan(new SnapchatUrlSpan(s, isavablechatfeeditem, urltype), i, j, 33);
    }

    private static final void a(ArrayList arraylist)
    {
        Collections.sort(arraylist, new Comparator() {

            public final int a(LinkSpec linkspec2, LinkSpec linkspec3)
            {
                if (linkspec2.c >= linkspec3.c)
                {
                    if (linkspec2.c > linkspec3.c)
                    {
                        return 1;
                    }
                    if (linkspec2.d < linkspec3.d)
                    {
                        return 1;
                    }
                    if (linkspec2.d <= linkspec3.d)
                    {
                        return 0;
                    }
                }
                return -1;
            }

            public int compare(Object obj, Object obj1)
            {
                return a((LinkSpec)obj, (LinkSpec)obj1);
            }

            public final boolean equals(Object obj)
            {
                return false;
            }

        });
        int i = arraylist.size();
        int j = 0;
        int k = i;
        do
        {
            if (j >= k - 1)
            {
                break;
            }
            LinkSpec linkspec = (LinkSpec)arraylist.get(j);
            LinkSpec linkspec1 = (LinkSpec)arraylist.get(j + 1);
            if (linkspec.c <= linkspec1.c && linkspec.d > linkspec1.c)
            {
                int l;
                if (linkspec1.d <= linkspec.d)
                {
                    l = j + 1;
                } else
                if (linkspec.d - linkspec.c > linkspec1.d - linkspec1.c)
                {
                    l = j + 1;
                } else
                if (linkspec.d - linkspec.c < linkspec1.d - linkspec1.c)
                {
                    l = j;
                } else
                {
                    l = -1;
                }
                if (l != -1)
                {
                    arraylist.remove(l);
                    k--;
                    continue;
                }
            }
            j++;
        } while (true);
    }

    private static final void a(ArrayList arraylist, Spannable spannable)
    {
        String s;
        int i;
        s = spannable.toString();
        i = 0;
_L2:
        String s1;
        LinkSpec linkspec;
        int j;
label0:
        {
            s1 = WebView.findAddress(s);
            if (s1 != null)
            {
                j = s.indexOf(s1);
                if (j >= 0)
                {
                    break label0;
                }
            }
            return;
        }
        linkspec = new LinkSpec();
        int k = j + s1.length();
        linkspec.c = j + i;
        linkspec.d = i + k;
        linkspec.b = UrlType.a;
        s = s.substring(k);
        i += k;
        String s2 = URLEncoder.encode(s1, "UTF-8");
        linkspec.a = (new StringBuilder()).append("geo:0,0?q=").append(s2).toString();
        arraylist.add(linkspec);
        continue; /* Loop/switch isn't completed */
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private static final void a(ArrayList arraylist, Spannable spannable, Pattern pattern, String as[], MatchFilter matchfilter, TransformFilter transformfilter)
    {
        Matcher matcher = pattern.matcher(spannable);
        do
        {
            if (!matcher.find())
            {
                break;
            }
            int i = matcher.start();
            int j = matcher.end();
            if (matchfilter == null || matchfilter.a(spannable, i, j))
            {
                LinkSpec linkspec = new LinkSpec();
                linkspec.a = a(matcher.group(0), as, matcher, transformfilter);
                linkspec.c = i;
                linkspec.d = j;
                arraylist.add(linkspec);
            }
        } while (true);
    }

    public static boolean a(Chat chat, TextView textview)
    {
        String s = chat.ap();
        if (!TextUtils.isEmpty(s))
        {
            SpannableStringBuilder spannablestringbuilder = new SpannableStringBuilder(Html.fromHtml(s));
            Object aobj[] = spannablestringbuilder.getSpans(0, spannablestringbuilder.length(), java/lang/Object);
            if (aobj != null && aobj.length != 0)
            {
                int i = aobj.length;
                for (int j = 0; j < i; j++)
                {
                    Object obj = aobj[j];
                    URLSpan urlspan = (URLSpan)obj;
                    spannablestringbuilder.setSpan(new SnapchatUrlSpan(urlspan.getURL(), chat, UrlType.b), spannablestringbuilder.getSpanStart(obj), spannablestringbuilder.getSpanEnd(obj), 33);
                    spannablestringbuilder.removeSpan(urlspan);
                }

                textview.setText(spannablestringbuilder);
                return true;
            }
        }
        return false;
    }

    public static final boolean a(ISavableChatFeedItem isavablechatfeeditem, Spannable spannable)
    {
        SnapchatUrlSpan asnapchaturlspan[] = (SnapchatUrlSpan[])spannable.getSpans(0, spannable.length(), com/snapchat/android/util/chat/SnapchatUrlSpan);
        for (int i = -1 + asnapchaturlspan.length; i >= 0; i--)
        {
            spannable.removeSpan(asnapchaturlspan[i]);
        }

        ArrayList arraylist = new ArrayList();
        a(arraylist, spannable, Patterns.WEB_URL, new String[] {
            "http://", "https://", "rtsp://"
        }, a, ((TransformFilter) (null)));
        a(arraylist, spannable, Patterns.EMAIL_ADDRESS, new String[] {
            "mailto:"
        }, ((MatchFilter) (null)), ((TransformFilter) (null)));
        a(arraylist, spannable);
        b(arraylist, spannable);
        a(arraylist);
        if (arraylist.size() == 0)
        {
            return false;
        }
        LinkSpec linkspec;
        for (Iterator iterator = arraylist.iterator(); iterator.hasNext(); a(isavablechatfeeditem, linkspec.b, linkspec.a, linkspec.c, linkspec.d, spannable))
        {
            linkspec = (LinkSpec)iterator.next();
        }

        return true;
    }

    public static final boolean a(ISavableChatFeedItem isavablechatfeeditem, FixTouchConsumeTextView fixtouchconsumetextview)
    {
        if ((isavablechatfeeditem instanceof ChatUnknown) || (isavablechatfeeditem instanceof ChatText) && ((ChatText)isavablechatfeeditem).aq())
        {
            return a((Chat)isavablechatfeeditem, ((TextView) (fixtouchconsumetextview)));
        }
        CharSequence charsequence = fixtouchconsumetextview.getText();
        if (charsequence instanceof Spannable)
        {
            if (a(isavablechatfeeditem, (Spannable)charsequence))
            {
                a(((TextView) (fixtouchconsumetextview)));
                return true;
            } else
            {
                return false;
            }
        }
        SpannableString spannablestring = SpannableString.valueOf(charsequence);
        if (a(isavablechatfeeditem, ((Spannable) (spannablestring))))
        {
            a(((TextView) (fixtouchconsumetextview)));
            fixtouchconsumetextview.setText(spannablestring);
            return true;
        } else
        {
            return false;
        }
    }

    private static final void b(ArrayList arraylist, Spannable spannable)
    {
        LinkSpec linkspec;
        for (Iterator iterator = PhoneNumberUtil.a().a(spannable.toString(), Locale.getDefault().getCountry(), com.google.i18n.phonenumbers.PhoneNumberUtil.Leniency.a, 0x7fffffffffffffffL).iterator(); iterator.hasNext(); arraylist.add(linkspec))
        {
            PhoneNumberMatch phonenumbermatch = (PhoneNumberMatch)iterator.next();
            linkspec = new LinkSpec();
            linkspec.a = (new StringBuilder()).append("tel:").append(PhoneNumberUtils.stripSeparators(phonenumbermatch.c())).toString();
            linkspec.c = phonenumbermatch.a();
            linkspec.d = phonenumbermatch.b();
            linkspec.b = UrlType.c;
        }

    }

}
