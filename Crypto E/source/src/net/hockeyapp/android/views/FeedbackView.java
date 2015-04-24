// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.hockeyapp.android.views;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Paint;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.shapes.RectShape;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.TextView;

public class FeedbackView extends LinearLayout
{

    private LinearLayout a;
    private ScrollView b;
    private LinearLayout c;
    private LinearLayout d;
    private LinearLayout e;
    private ListView f;

    public FeedbackView(Context context)
    {
        super(context);
        a(context);
        b(context);
        c(context);
        d(context);
        e(context);
        h(context);
        i(context);
        j(context);
        k(context);
        m(context);
        l(context);
        f(context);
        n(context);
        o(context);
        g(context);
    }

    private void a(Context context)
    {
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-1, -2);
        setBackgroundColor(-1);
        setLayoutParams(layoutparams);
    }

    private void a(Context context, EditText edittext)
    {
        if (android.os.Build.VERSION.SDK_INT < 11)
        {
            edittext.setBackgroundDrawable(p(context));
        }
    }

    private void b(Context context)
    {
        a = new LinearLayout(context);
        a.setId(0x20012);
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-1, -1);
        int i1 = (int)TypedValue.applyDimension(1, 10F, getResources().getDisplayMetrics());
        layoutparams.gravity = 49;
        a.setLayoutParams(layoutparams);
        a.setPadding(0, i1, 0, i1);
        a.setOrientation(1);
        addView(a);
    }

    private void c(Context context)
    {
        b = new ScrollView(context);
        b.setId(0x20017);
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-1, -1);
        int i1 = (int)TypedValue.applyDimension(1, 10F, getResources().getDisplayMetrics());
        layoutparams.gravity = 17;
        b.setLayoutParams(layoutparams);
        b.setPadding(i1, i1, i1, i1);
        a.addView(b);
    }

    private void d(Context context)
    {
        c = new LinearLayout(context);
        c.setId(0x20013);
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-1, -1);
        int i1 = (int)TypedValue.applyDimension(1, 10F, getResources().getDisplayMetrics());
        layoutparams.gravity = 3;
        c.setLayoutParams(layoutparams);
        c.setPadding(i1, i1, i1, i1);
        c.setGravity(48);
        c.setOrientation(1);
        b.addView(c);
    }

    private void e(Context context)
    {
        d = new LinearLayout(context);
        d.setId(0x20015);
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-1, -1);
        int i1 = (int)TypedValue.applyDimension(1, 10F, getResources().getDisplayMetrics());
        layoutparams.gravity = 17;
        d.setLayoutParams(layoutparams);
        d.setPadding(i1, i1, i1, i1);
        d.setGravity(48);
        d.setOrientation(1);
        a.addView(d);
    }

    private void f(Context context)
    {
        e = new LinearLayout(context);
        e.setId(0x20014);
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-1, -2);
        int i1 = (int)TypedValue.applyDimension(1, 10F, getResources().getDisplayMetrics());
        layoutparams.gravity = 3;
        e.setLayoutParams(layoutparams);
        e.setPadding(0, i1, 0, i1);
        e.setGravity(48);
        e.setOrientation(0);
        d.addView(e);
    }

    private void g(Context context)
    {
        f = new ListView(context);
        f.setId(0x20016);
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-1, -1);
        int i1 = (int)TypedValue.applyDimension(1, 10F, getResources().getDisplayMetrics());
        f.setLayoutParams(layoutparams);
        f.setPadding(0, i1, 0, i1);
        d.addView(f);
    }

    private Drawable getButtonSelector()
    {
        StateListDrawable statelistdrawable = new StateListDrawable();
        statelistdrawable.addState(new int[] {
            0xfefeff59
        }, new ColorDrawable(0xff000000));
        statelistdrawable.addState(new int[] {
            0xfefeff59, 0x101009c
        }, new ColorDrawable(0xff444444));
        statelistdrawable.addState(new int[] {
            0x10100a7
        }, new ColorDrawable(0xff888888));
        return statelistdrawable;
    }

    private void h(Context context)
    {
        EditText edittext = new EditText(context);
        edittext.setId(8194);
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-1, -2);
        layoutparams.setMargins(0, 0, 0, (int)TypedValue.applyDimension(1, 20F, getResources().getDisplayMetrics()));
        edittext.setLayoutParams(layoutparams);
        edittext.setImeOptions(5);
        edittext.setInputType(16385);
        edittext.setSingleLine(true);
        edittext.setTextColor(0xff888888);
        edittext.setTextSize(2, 15F);
        edittext.setTypeface(null, 0);
        edittext.setHint("Name");
        edittext.setHintTextColor(0xffcccccc);
        a(context, edittext);
        c.addView(edittext);
    }

    private void i(Context context)
    {
        EditText edittext = new EditText(context);
        edittext.setId(8196);
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-1, -2);
        layoutparams.setMargins(0, 0, 0, (int)TypedValue.applyDimension(1, 20F, getResources().getDisplayMetrics()));
        edittext.setLayoutParams(layoutparams);
        edittext.setImeOptions(5);
        edittext.setInputType(33);
        edittext.setSingleLine(true);
        edittext.setTextColor(0xff888888);
        edittext.setTextSize(2, 15F);
        edittext.setTypeface(null, 0);
        edittext.setHint("Email");
        edittext.setHintTextColor(0xffcccccc);
        a(context, edittext);
        c.addView(edittext);
    }

    private void j(Context context)
    {
        EditText edittext = new EditText(context);
        edittext.setId(8198);
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-1, -2);
        layoutparams.setMargins(0, 0, 0, (int)TypedValue.applyDimension(1, 20F, getResources().getDisplayMetrics()));
        edittext.setLayoutParams(layoutparams);
        edittext.setImeOptions(5);
        edittext.setInputType(16433);
        edittext.setSingleLine(true);
        edittext.setTextColor(0xff888888);
        edittext.setTextSize(2, 15F);
        edittext.setTypeface(null, 0);
        edittext.setHint("Subject");
        edittext.setHintTextColor(0xffcccccc);
        a(context, edittext);
        c.addView(edittext);
    }

    private void k(Context context)
    {
        EditText edittext = new EditText(context);
        edittext.setId(8200);
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-1, -2);
        int i1 = (int)TypedValue.applyDimension(1, 20F, getResources().getDisplayMetrics());
        int j1 = (int)TypedValue.applyDimension(1, 100F, getResources().getDisplayMetrics());
        layoutparams.setMargins(0, 0, 0, i1);
        edittext.setLayoutParams(layoutparams);
        edittext.setImeOptions(5);
        edittext.setInputType(16385);
        edittext.setSingleLine(false);
        edittext.setTextColor(0xff888888);
        edittext.setTextSize(2, 15F);
        edittext.setTypeface(null, 0);
        edittext.setMinimumHeight(j1);
        edittext.setHint("Message");
        edittext.setHintTextColor(0xffcccccc);
        a(context, edittext);
        c.addView(edittext);
    }

    private void l(Context context)
    {
        TextView textview = new TextView(context);
        textview.setId(8192);
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-2, -2);
        int i1 = (int)TypedValue.applyDimension(1, 10F, getResources().getDisplayMetrics());
        layoutparams.setMargins(0, 0, 0, 0);
        textview.setLayoutParams(layoutparams);
        textview.setPadding(0, i1, 0, i1);
        textview.setEllipsize(android.text.TextUtils.TruncateAt.END);
        textview.setShadowLayer(1.0F, 0.0F, 1.0F, -1);
        textview.setSingleLine(true);
        textview.setText("Last Updated: ");
        textview.setTextColor(0xff888888);
        textview.setTextSize(2, 15F);
        textview.setTypeface(null, 0);
        d.addView(textview);
    }

    private void m(Context context)
    {
        Button button = new Button(context);
        button.setId(8201);
        int i1 = (int)TypedValue.applyDimension(1, 10F, getResources().getDisplayMetrics());
        int j1 = (int)TypedValue.applyDimension(1, 30F, getResources().getDisplayMetrics());
        int k1 = (int)TypedValue.applyDimension(1, 10F, getResources().getDisplayMetrics());
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-1, -2);
        layoutparams.setMargins(0, 0, 0, k1);
        layoutparams.gravity = 1;
        button.setLayoutParams(layoutparams);
        button.setBackgroundDrawable(getButtonSelector());
        button.setPadding(j1, i1, j1, i1);
        button.setText("Send feedback");
        button.setTextColor(-1);
        button.setTextSize(2, 15F);
        c.addView(button);
    }

    private void n(Context context)
    {
        Button button = new Button(context);
        button.setId(0x20010);
        int i1 = (int)TypedValue.applyDimension(1, 10F, getResources().getDisplayMetrics());
        int j1 = (int)TypedValue.applyDimension(1, 10F, getResources().getDisplayMetrics());
        int k1 = (int)TypedValue.applyDimension(1, 5F, getResources().getDisplayMetrics());
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-1, -2);
        layoutparams.setMargins(0, 0, k1, j1);
        layoutparams.gravity = 1;
        layoutparams.weight = 1.0F;
        button.setLayoutParams(layoutparams);
        button.setBackgroundDrawable(getButtonSelector());
        button.setPadding(0, i1, 0, i1);
        button.setGravity(17);
        button.setText("Add a Response");
        button.setTextColor(-1);
        button.setTextSize(2, 15F);
        e.addView(button);
    }

    private void o(Context context)
    {
        Button button = new Button(context);
        button.setId(0x20011);
        int i1 = (int)TypedValue.applyDimension(1, 10F, getResources().getDisplayMetrics());
        int j1 = (int)TypedValue.applyDimension(1, 10F, getResources().getDisplayMetrics());
        int k1 = (int)TypedValue.applyDimension(1, 5F, getResources().getDisplayMetrics());
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-1, -2);
        layoutparams.setMargins(k1, 0, 0, j1);
        layoutparams.gravity = 1;
        button.setLayoutParams(layoutparams);
        button.setBackgroundDrawable(getButtonSelector());
        button.setPadding(0, i1, 0, i1);
        button.setGravity(17);
        button.setText("Refresh");
        button.setTextColor(-1);
        button.setTextSize(2, 15F);
        layoutparams.weight = 1.0F;
        e.addView(button);
    }

    private Drawable p(Context context)
    {
        int i1 = (int)(10F * context.getResources().getDisplayMetrics().density);
        ShapeDrawable shapedrawable = new ShapeDrawable(new RectShape());
        Paint paint = shapedrawable.getPaint();
        paint.setColor(-1);
        paint.setStyle(android.graphics.Paint.Style.FILL_AND_STROKE);
        paint.setStrokeWidth(1.0F);
        shapedrawable.setPadding(i1, i1, i1, i1);
        int j1 = (int)(1.5D * (double)context.getResources().getDisplayMetrics().density);
        ShapeDrawable shapedrawable1 = new ShapeDrawable(new RectShape());
        Paint paint1 = shapedrawable1.getPaint();
        paint1.setColor(0xff444444);
        paint1.setStyle(android.graphics.Paint.Style.FILL_AND_STROKE);
        paint1.setStrokeWidth(1.0F);
        shapedrawable1.setPadding(0, 0, 0, j1);
        return new LayerDrawable(new Drawable[] {
            shapedrawable1, shapedrawable
        });
    }
}
