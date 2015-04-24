// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.cameradecor;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.media.ThumbnailUtils;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.snapchat.android.util.SnapMediaUtils;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.CancelInChatSnapEvent;
import com.snapchat.android.util.eventbus.SetPagingEnabledEvent;
import com.snapchat.android.util.eventbus.SwitchToInChatCameraEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.camera.cameradecor:
//            DefaultCameraDecor

public class InChatCameraDecor extends DefaultCameraDecor
{

    private final SwitchToInChatCameraEvent n;
    private final TextView o;

    public InChatCameraDecor(Context context, RelativeLayout relativelayout, CameraDecor.CameraDecorInterface cameradecorinterface, SwitchToInChatCameraEvent switchtoinchatcameraevent)
    {
        super(context, relativelayout, cameradecorinterface);
        n = switchtoinchatcameraevent;
        o = g;
        f.setBackgroundResource(0x7f020025);
        f.setOnClickListener(new android.view.View.OnClickListener() {

            final InChatCameraDecor a;

            public void onClick(View view)
            {
                a.a.h().onBackPressed();
            }

            
            {
                a = InChatCameraDecor.this;
                super();
            }
        });
        Drawable drawable = a(context);
        if (drawable == null)
        {
            o.setBackgroundResource(0x7f020027);
        } else
        {
            o.setBackgroundDrawable(drawable);
        }
        o.setOnClickListener(new android.view.View.OnClickListener() {

            final InChatCameraDecor a;

            public void onClick(View view)
            {
                Intent intent = new Intent("android.intent.action.PICK");
                intent.setType("image/*");
                FragmentActivity fragmentactivity = a.a.h();
                if (intent.resolveActivity(fragmentactivity.getPackageManager()) != null)
                {
                    fragmentactivity.startActivityForResult(intent, 1001);
                }
            }

            
            {
                a = InChatCameraDecor.this;
                super();
            }
        });
        a();
    }

    private static Bitmap a(Context context, int i)
    {
        Cursor cursor;
        String as[] = {
            "_data"
        };
        cursor = context.getContentResolver().query(android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI, as, null, null, "date_modified DESC");
        if (cursor == null) goto _L2; else goto _L1
_L1:
        boolean flag = cursor.moveToFirst();
        if (flag) goto _L3; else goto _L2
_L2:
        if (cursor != null)
        {
            cursor.close();
        }
_L5:
        return null;
_L3:
        byte abyte0[] = SnapMediaUtils.a(cursor.getString(cursor.getColumnIndex("_data")));
        if (abyte0 != null)
        {
            break MISSING_BLOCK_LABEL_91;
        }
        if (cursor == null) goto _L5; else goto _L4
_L4:
        cursor.close();
        return null;
        Bitmap bitmap = SnapMediaUtils.a(context, abyte0);
        if (cursor != null)
        {
            cursor.close();
        }
        if (bitmap == null) goto _L5; else goto _L6
_L6:
        Bitmap bitmap1 = ThumbnailUtils.extractThumbnail(bitmap, i, i);
        bitmap.recycle();
        return bitmap1;
        Exception exception;
        exception;
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception;
    }

    private static Drawable a(Context context)
    {
        Bitmap bitmap = SnapMediaUtils.a(context, 0x7f020026);
        if (bitmap == null)
        {
            return null;
        }
        int i = bitmap.getWidth();
        Bitmap bitmap1 = SnapMediaUtils.a(i, i, android.graphics.Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap1);
        Paint paint = new Paint();
        float f = 0.31F * (float)canvas.getWidth();
        Bitmap bitmap2 = a(context, (int)((float)i - 2.0F * f));
        if (bitmap2 == null)
        {
            bitmap1.recycle();
            bitmap.recycle();
            return null;
        } else
        {
            paint.setShader(new BitmapShader(bitmap2, android.graphics.Shader.TileMode.CLAMP, android.graphics.Shader.TileMode.CLAMP));
            canvas.save();
            canvas.translate(f, f);
            RectF rectf = new RectF(0.0F, 0.0F, (float)canvas.getWidth() - 2.0F * f, (float)canvas.getHeight() - f * 2.0F);
            int j = (int)ViewUtils.a(5F, context);
            canvas.drawRoundRect(rectf, j, j, paint);
            canvas.restore();
            RectF rectf1 = new RectF(0.0F, 0.0F, canvas.getWidth(), canvas.getHeight());
            paint.setShader(new BitmapShader(bitmap, android.graphics.Shader.TileMode.CLAMP, android.graphics.Shader.TileMode.CLAMP));
            canvas.drawRect(rectf1, paint);
            bitmap2.recycle();
            bitmap.recycle();
            return new BitmapDrawable(context.getResources(), bitmap1);
        }
    }

    public void b()
    {
        BusProvider.a().a(new SetPagingEnabledEvent(false));
    }

    public boolean e()
    {
        a.a(n.a, false);
        BusProvider.a().a(new CancelInChatSnapEvent());
        return true;
    }

    protected void g()
    {
    }

    protected boolean h()
    {
        return false;
    }
}
