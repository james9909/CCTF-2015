// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Message;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;

// Referenced classes of package com.google.android.gms.internal:
//            hk, hf, dw

public class ho extends WebChromeClient
{

    private final hk mj;

    public ho(hk hk1)
    {
        mj = hk1;
    }

    private static void a(android.app.AlertDialog.Builder builder, String s, JsResult jsresult)
    {
        builder.setMessage(s).setPositiveButton(0x104000a, new android.content.DialogInterface.OnClickListener(jsresult) {

            final JsResult yq;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                yq.confirm();
            }

            
            {
                yq = jsresult;
                super();
            }
        }).setNegativeButton(0x1040000, new android.content.DialogInterface.OnClickListener(jsresult) {

            final JsResult yq;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                yq.cancel();
            }

            
            {
                yq = jsresult;
                super();
            }
        }).setOnCancelListener(new android.content.DialogInterface.OnCancelListener(jsresult) {

            final JsResult yq;

            public void onCancel(DialogInterface dialoginterface)
            {
                yq.cancel();
            }

            
            {
                yq = jsresult;
                super();
            }
        }).create().show();
    }

    private static void a(Context context, android.app.AlertDialog.Builder builder, String s, String s1, JsPromptResult jspromptresult)
    {
        LinearLayout linearlayout = new LinearLayout(context);
        linearlayout.setOrientation(1);
        TextView textview = new TextView(context);
        textview.setText(s);
        EditText edittext = new EditText(context);
        edittext.setText(s1);
        linearlayout.addView(textview);
        linearlayout.addView(edittext);
        builder.setView(linearlayout).setPositiveButton(0x104000a, new android.content.DialogInterface.OnClickListener(jspromptresult, edittext) {

            final JsPromptResult yr;
            final EditText ys;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                yr.confirm(ys.getText().toString());
            }

            
            {
                yr = jspromptresult;
                ys = edittext;
                super();
            }
        }).setNegativeButton(0x1040000, new android.content.DialogInterface.OnClickListener(jspromptresult) {

            final JsPromptResult yr;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                yr.cancel();
            }

            
            {
                yr = jspromptresult;
                super();
            }
        }).setOnCancelListener(new android.content.DialogInterface.OnCancelListener(jspromptresult) {

            final JsPromptResult yr;

            public void onCancel(DialogInterface dialoginterface)
            {
                yr.cancel();
            }

            
            {
                yr = jspromptresult;
                super();
            }
        }).create().show();
    }

    private final Context c(WebView webview)
    {
        Object obj;
        if (!(webview instanceof hk))
        {
            obj = webview.getContext();
        } else
        {
            hk hk1 = (hk)webview;
            obj = hk1.dL();
            if (obj == null)
            {
                return hk1.getContext();
            }
        }
        return ((Context) (obj));
    }

    protected final void a(View view, int i, android.webkit.WebChromeClient.CustomViewCallback customviewcallback)
    {
        dw dw1 = mj.dM();
        if (dw1 == null)
        {
            hf.X("Could not get ad overlay when showing custom view.");
            customviewcallback.onCustomViewHidden();
            return;
        } else
        {
            dw1.a(view, customviewcallback);
            dw1.setRequestedOrientation(i);
            return;
        }
    }

    protected boolean a(Context context, String s, String s1, String s2, JsResult jsresult, JsPromptResult jspromptresult, boolean flag)
    {
        android.app.AlertDialog.Builder builder;
        builder = new android.app.AlertDialog.Builder(context);
        builder.setTitle(s);
        if (flag)
        {
            try
            {
                a(context, builder, s1, s2, jspromptresult);
            }
            catch (android.view.WindowManager.BadTokenException badtokenexception)
            {
                hf.d("Fail to display Dialog.", badtokenexception);
            }
            break MISSING_BLOCK_LABEL_56;
        }
        a(builder, s1, jsresult);
        return true;
    }

    public final void onCloseWindow(WebView webview)
    {
        if (!(webview instanceof hk))
        {
            hf.X("Tried to close a WebView that wasn't an AdWebView.");
            return;
        }
        dw dw1 = ((hk)webview).dM();
        if (dw1 == null)
        {
            hf.X("Tried to close an AdWebView not associated with an overlay.");
            return;
        } else
        {
            dw1.close();
            return;
        }
    }

    public final boolean onConsoleMessage(ConsoleMessage consolemessage)
    {
        String s;
        s = (new StringBuilder()).append("JS: ").append(consolemessage.message()).append(" (").append(consolemessage.sourceId()).append(":").append(consolemessage.lineNumber()).append(")").toString();
        if (s.contains("Application Cache"))
        {
            return super.onConsoleMessage(consolemessage);
        }
        static class _cls7
        {

            static final int yt[];

            static 
            {
                yt = new int[android.webkit.ConsoleMessage.MessageLevel.values().length];
                try
                {
                    yt[android.webkit.ConsoleMessage.MessageLevel.ERROR.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    yt[android.webkit.ConsoleMessage.MessageLevel.WARNING.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    yt[android.webkit.ConsoleMessage.MessageLevel.LOG.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    yt[android.webkit.ConsoleMessage.MessageLevel.TIP.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    yt[android.webkit.ConsoleMessage.MessageLevel.DEBUG.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror4)
                {
                    return;
                }
            }
        }

        _cls7.yt[consolemessage.messageLevel().ordinal()];
        JVM INSTR tableswitch 1 5: default 112
    //                   1 122
    //                   2 129
    //                   3 136
    //                   4 136
    //                   5 143;
           goto _L1 _L2 _L3 _L4 _L4 _L5
_L1:
        hf.V(s);
_L7:
        return super.onConsoleMessage(consolemessage);
_L2:
        hf.U(s);
        continue; /* Loop/switch isn't completed */
_L3:
        hf.X(s);
        continue; /* Loop/switch isn't completed */
_L4:
        hf.V(s);
        continue; /* Loop/switch isn't completed */
_L5:
        hf.T(s);
        if (true) goto _L7; else goto _L6
_L6:
    }

    public final boolean onCreateWindow(WebView webview, boolean flag, boolean flag1, Message message)
    {
        android.webkit.WebView.WebViewTransport webviewtransport = (android.webkit.WebView.WebViewTransport)message.obj;
        WebView webview1 = new WebView(webview.getContext());
        webview1.setWebViewClient(mj.dN());
        webviewtransport.setWebView(webview1);
        message.sendToTarget();
        return true;
    }

    public final void onExceededDatabaseQuota(String s, String s1, long l, long l1, long l2, android.webkit.WebStorage.QuotaUpdater quotaupdater)
    {
        long l3 = 0x500000L - l2;
        if (l3 <= 0L)
        {
            quotaupdater.updateQuota(l);
            return;
        }
        if (l == 0L)
        {
            if (l1 > l3 || l1 > 0x100000L)
            {
                l1 = 0L;
            }
        } else
        if (l1 == 0L)
        {
            l1 = Math.min(l + Math.min(0x20000L, l3), 0x100000L);
        } else
        {
            if (l1 <= Math.min(0x100000L - l, l3))
            {
                l += l1;
            }
            l1 = l;
        }
        quotaupdater.updateQuota(l1);
    }

    public final void onHideCustomView()
    {
        dw dw1 = mj.dM();
        if (dw1 == null)
        {
            hf.X("Could not get ad overlay when hiding custom view.");
            return;
        } else
        {
            dw1.cm();
            return;
        }
    }

    public final boolean onJsAlert(WebView webview, String s, String s1, JsResult jsresult)
    {
        return a(c(webview), s, s1, null, jsresult, null, false);
    }

    public final boolean onJsBeforeUnload(WebView webview, String s, String s1, JsResult jsresult)
    {
        return a(c(webview), s, s1, null, jsresult, null, false);
    }

    public final boolean onJsConfirm(WebView webview, String s, String s1, JsResult jsresult)
    {
        return a(c(webview), s, s1, null, jsresult, null, false);
    }

    public final boolean onJsPrompt(WebView webview, String s, String s1, String s2, JsPromptResult jspromptresult)
    {
        return a(c(webview), s, s1, s2, null, jspromptresult, true);
    }

    public final void onReachedMaxAppCacheSize(long l, long l1, android.webkit.WebStorage.QuotaUpdater quotaupdater)
    {
        long l2 = 0x500000L - l1;
        long l3 = 0x20000L + l;
        if (l2 < l3)
        {
            quotaupdater.updateQuota(0L);
            return;
        } else
        {
            quotaupdater.updateQuota(l3);
            return;
        }
    }

    public final void onShowCustomView(View view, android.webkit.WebChromeClient.CustomViewCallback customviewcallback)
    {
        a(view, -1, customviewcallback);
    }
}
