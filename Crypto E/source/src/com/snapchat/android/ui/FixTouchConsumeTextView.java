// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.content.Context;
import android.text.Html;
import android.text.Layout;
import android.text.Selection;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.style.ClickableSpan;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.TextView;

public class FixTouchConsumeTextView extends TextView
{

    public FixTouchConsumeTextView(Context context)
    {
        super(context);
    }

    public FixTouchConsumeTextView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public FixTouchConsumeTextView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    protected ClickableSpan[] a(MotionEvent motionevent, Spannable spannable)
    {
        Layout layout = getLayout();
        if (layout == null)
        {
            return null;
        } else
        {
            int i = ((int)motionevent.getX() - getTotalPaddingLeft()) + getScrollX();
            int j = layout.getOffsetForHorizontal(layout.getLineForVertical(((int)motionevent.getY() - getTotalPaddingTop()) + getScrollY()), i);
            return (ClickableSpan[])spannable.getSpans(j, j, android/text/style/ClickableSpan);
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        boolean flag = super.onTouchEvent(motionevent);
        if (getText() instanceof Spannable)
        {
            Spannable spannable = (Spannable)getText();
            int i = motionevent.getAction();
            if (i == 1 || i == 0)
            {
                ClickableSpan aclickablespan[] = a(motionevent, spannable);
                if (aclickablespan == null)
                {
                    aclickablespan = new ClickableSpan[0];
                }
                if (aclickablespan.length != 0)
                {
                    if (i == 0)
                    {
                        Selection.setSelection(spannable, spannable.getSpanStart(aclickablespan[0]), spannable.getSpanEnd(aclickablespan[0]));
                    }
                    return true;
                } else
                {
                    Selection.removeSelection(spannable);
                    return false;
                }
            }
        }
        return flag;
    }

    public void setTextViewHTML(String s)
    {
        setText(new SpannableStringBuilder(Html.fromHtml(s)));
    }
}
