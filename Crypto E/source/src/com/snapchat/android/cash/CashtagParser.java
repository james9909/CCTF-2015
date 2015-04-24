// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.cash;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ImageSpan;
import android.widget.EditText;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.util.ViewUtils;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import net.sourceforge.jeval.EvaluationException;
import net.sourceforge.jeval.Evaluator;

public class CashtagParser
{
    public static class CashtagRange
    {

        int a;
        int b;

        CashtagRange(int i, int j)
        {
            a = i;
            b = j;
        }
    }


    protected CashtagParser()
    {
    }

    private Drawable a(Paint paint, String s, int i, int j, int k)
    {
        Paint paint1 = new Paint(paint);
        paint1.setTextAlign(android.graphics.Paint.Align.CENTER);
        paint1.setColor(-1);
        Bitmap bitmap = Bitmap.createBitmap(i, j, android.graphics.Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap);
        Drawable drawable = SnapchatApplication.e().getResources().getDrawable(0x7f0200aa);
        drawable.setBounds(0, 0, i, j);
        drawable.draw(canvas);
        float f1 = (j + k) / 2;
        canvas.drawText(s, i / 2, f1, paint1);
        return new BitmapDrawable(SnapchatApplication.e().getResources(), bitmap);
    }

    private void a(EditText edittext, Editable editable, CashtagRange cashtagrange, String s)
    {
        Rect rect = new Rect();
        edittext.getPaint().getTextBounds(s, 0, s.length(), rect);
        int i = (int)((float)rect.width() + ViewUtils.a(8F, SnapchatApplication.e()));
        float f1 = ViewUtils.a(24F, SnapchatApplication.e());
        int j = -5 + (int)(((float)rect.height() - f1) / 2.0F);
        Drawable drawable = a(((Paint) (edittext.getPaint())), s, i, (int)f1, rect.height());
        drawable.setBounds(0, j, drawable.getIntrinsicWidth(), j + drawable.getIntrinsicHeight());
        editable.setSpan(new ImageSpan(drawable, 0), cashtagrange.a, cashtagrange.b, 33);
        if (cashtagrange.b == editable.length())
        {
            editable.insert(cashtagrange.b, " ");
            edittext.setSelection(1 + cashtagrange.b);
            return;
        } else
        {
            edittext.setSelection(cashtagrange.b);
            return;
        }
    }

    public static boolean c(String s)
    {
        return s.matches("\\$([1-9],\\d{3})(\\.\\d{0,2})?") || s.matches("\\$([1-9]\\d{0,3}|0?)?(\\.(\\d{0,2}))?") || s.matches("\\$(?i:pi|e)");
    }

    private static String g(String s)
    {
        return s.replaceAll("(?i)PI", "3.14").replaceAll("(?i)E", "2.72");
    }

    protected int a(double d1)
    {
        double d2 = Math.round(100D * d1);
        if (d2 > 2147483647D)
        {
            throw new NumberFormatException();
        } else
        {
            return Double.valueOf(d2).intValue();
        }
    }

    public int a(Editable editable)
    {
        int i = 0;
        Iterator iterator = b(editable).iterator();
        do
        {
            int j;
label0:
            {
                if (iterator.hasNext())
                {
                    Object obj = iterator.next();
                    j = d(editable.subSequence(editable.getSpanStart(obj), editable.getSpanEnd(obj)).toString());
                    if (j != -1)
                    {
                        break label0;
                    }
                    i = -1;
                }
                return i;
            }
            i += j;
        } while (true);
    }

    protected CashtagRange a(String s, int i)
    {
        if (i < 0 || i > s.length())
        {
            return null;
        }
        int j = -1;
        for (int k = 0; k < i; k++)
        {
            if (s.substring(k, k + 1).matches("\\s"))
            {
                j = k;
            }
        }

        int l = j + 1;
        int i1 = s.length();
        for (int j1 = -1 + s.length(); j1 >= i; j1--)
        {
            if (s.substring(j1, j1 + 1).matches("\\s"))
            {
                i1 = j1;
            }
        }

        if (l > i1)
        {
            return new CashtagRange(i, i);
        } else
        {
            return new CashtagRange(l, i1);
        }
    }

    protected String a(int i)
    {
        if (i <= 0)
        {
            return null;
        }
        String s;
        if (i % 100 == 0)
        {
            Object aobj1[] = new Object[1];
            aobj1[0] = Integer.valueOf(i / 100);
            s = String.format("%d", aobj1);
        } else
        {
            Object aobj[] = new Object[1];
            aobj[0] = Float.valueOf((float)i / 100F);
            s = String.format("%.2f", aobj);
        }
        return (new StringBuilder()).append("$").append(s).toString();
    }

    protected String a(String s)
    {
        if (s.indexOf(".") == -1 + s.length())
        {
            s = s.substring(0, -1 + s.length());
        } else
        if (s.indexOf(".") == -2 + s.length())
        {
            return (new StringBuilder()).append(s).append("0").toString();
        }
        return s;
    }

    public void a(EditText edittext, int i)
    {
        Editable editable;
        CashtagRange cashtagrange;
        editable = edittext.getText();
        cashtagrange = b(editable.toString(), i);
        if (cashtagrange != null) goto _L2; else goto _L1
_L1:
        cashtagrange = c(editable.toString(), i);
        if (cashtagrange == null) goto _L4; else goto _L3
_L3:
        String s2 = a(e(editable.toString().substring(1 + cashtagrange.a, cashtagrange.b)));
        int k = editable.length();
        editable.replace(cashtagrange.a, cashtagrange.b, s2);
        cashtagrange.b = cashtagrange.b + (editable.length() - k);
_L6:
        a(edittext, editable, cashtagrange, a(editable.subSequence(cashtagrange.a, cashtagrange.b).toString()));
        return;
_L4:
        throw new IllegalStateException("check containsCashtagAtSelection first");
_L2:
        String s = editable.subSequence(cashtagrange.a, cashtagrange.b).toString();
        if (s.matches("\\$(?i:pi|e)"))
        {
            String s1 = g(s);
            int j = editable.length();
            editable.replace(cashtagrange.a, cashtagrange.b, s1);
            cashtagrange.b = cashtagrange.b + (editable.length() - j);
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public boolean a(EditText edittext)
    {
        if (edittext.getSelectionStart() != edittext.getSelectionEnd())
        {
            return false;
        }
        List list = b(edittext.getEditableText());
        CashtagRange cashtagrange = b(edittext.getText().toString(), edittext.getSelectionEnd());
        CashtagRange cashtagrange1 = c(edittext.getText().toString(), edittext.getSelectionEnd());
        if (cashtagrange == null && cashtagrange1 == null)
        {
            return false;
        }
        Iterator iterator;
        if (cashtagrange == null)
        {
            cashtagrange = cashtagrange1;
        }
        for (iterator = list.iterator(); iterator.hasNext();)
        {
            Object obj = iterator.next();
            if (cashtagrange.a <= edittext.getEditableText().getSpanEnd(obj) && cashtagrange.b >= edittext.getEditableText().getSpanStart(obj))
            {
                return false;
            }
        }

        return true;
    }

    public int b(EditText edittext)
    {
        Editable editable = edittext.getText();
        CashtagRange cashtagrange = b(editable.toString(), edittext.getSelectionEnd());
        if (cashtagrange == null)
        {
            cashtagrange = c(editable.toString(), edittext.getSelectionEnd());
            if (cashtagrange == null)
            {
                throw new IllegalStateException("check containsCashtagAtSelection first");
            }
        }
        return e(editable.subSequence(1 + cashtagrange.a, cashtagrange.b).toString().replace(",", ""));
    }

    protected CashtagRange b(String s, int i)
    {
        CashtagRange cashtagrange = a(s, i);
        if (cashtagrange == null)
        {
            return null;
        }
        if (!b(s.substring(cashtagrange.a, cashtagrange.b)))
        {
            cashtagrange = null;
        }
        return cashtagrange;
    }

    protected List b(Editable editable)
    {
        return Arrays.asList(editable.getSpans(0, editable.length(), android/text/style/ImageSpan));
    }

    protected boolean b(String s)
    {
        return c(s) && d(s) >= 100;
    }

    protected CashtagRange c(String s, int i)
    {
        if (i <= s.length() && i >= 0) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        if (i >= s.length() || s.charAt(i) != '$') goto _L4; else goto _L3
_L3:
        int j = i;
_L6:
        int k = j;
_L7:
        if (k < 1 + s.length())
        {
            if (f(s.substring(j, k)))
            {
                CashtagRange cashtagrange;
                if (i <= k)
                {
                    cashtagrange = new CashtagRange(j, k);
                } else
                {
                    cashtagrange = null;
                }
                return cashtagrange;
            }
            break MISSING_BLOCK_LABEL_127;
        }
          goto _L1
_L4:
        j = s.substring(0, i).lastIndexOf('$');
        if (j < 0) goto _L1; else goto _L5
_L5:
        if (j > 0 && !s.substring(j - 1, j).matches("\\s"))
        {
            return null;
        }
          goto _L6
        k++;
          goto _L7
    }

    protected int d(String s)
    {
        if (!"$.".equals(s)) goto _L2; else goto _L1
_L1:
        return -1;
_L2:
        Matcher matcher;
        String s1 = a(g(s)).replace(",", "");
        matcher = Pattern.compile("\\$([1-9]\\d{0,3}|0?)?(\\.(\\d{0,2}))?").matcher(s1);
        if (!matcher.matches()) goto _L1; else goto _L3
_L3:
        String s2 = matcher.group(1);
        boolean flag;
        int i;
        int j;
        String s3;
        boolean flag1;
        int k;
        try
        {
            flag = TextUtils.isEmpty(s2);
        }
        catch (NumberFormatException numberformatexception)
        {
            return -1;
        }
        if (!flag) goto _L5; else goto _L4
_L4:
        j = 0;
_L6:
        s3 = matcher.group(3);
        flag1 = TextUtils.isEmpty(s3);
        k = 0;
        if (!flag1)
        {
            k = Integer.parseInt(s3);
        }
        return k + j * 100;
_L5:
        i = Integer.parseInt(s2);
        j = i;
          goto _L6
    }

    protected int e(String s)
    {
        String s2;
        Evaluator evaluator;
        String s1 = g(s);
        boolean flag = Pattern.compile("([^\\d\\s\\.\\)]|^)\\s*\\+").matcher(s1).find();
        boolean flag1;
        if (!s1.matches("[\\s\\d+/*\\-()\\.\327\367]*"))
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (flag1 || flag)
        {
            return -1;
        }
        s2 = s1.replace('\327', '*').replace('\367', '/');
        evaluator = new Evaluator('\'', false, false, false, false);
        int i = a(Double.parseDouble(evaluator.b(s2)));
        return i;
        EvaluationException evaluationexception;
        evaluationexception;
_L2:
        return -1;
        NumberFormatException numberformatexception;
        numberformatexception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected boolean f(String s)
    {
        boolean flag = true;
        if (!s.matches("\\$\\(.*\\)"))
        {
            return false;
        }
        int i = e(s.substring(flag));
        if (i == -1 || i < 100)
        {
            flag = false;
        }
        return flag;
    }
}
