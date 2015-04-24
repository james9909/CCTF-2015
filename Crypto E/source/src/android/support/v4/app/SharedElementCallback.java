// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Parcelable;
import android.view.View;
import android.widget.ImageView;
import java.util.List;
import java.util.Map;

public abstract class SharedElementCallback
{

    private Matrix mTempMatrix;

    public SharedElementCallback()
    {
    }

    public Parcelable onCaptureSharedElementSnapshot(View view, Matrix matrix, RectF rectf)
    {
        int i = Math.round(rectf.width());
        int j = Math.round(rectf.height());
        Bitmap bitmap = null;
        if (i > 0)
        {
            bitmap = null;
            if (j > 0)
            {
                if (mTempMatrix == null)
                {
                    mTempMatrix = new Matrix();
                }
                mTempMatrix.set(matrix);
                mTempMatrix.postTranslate(-rectf.left, -rectf.top);
                bitmap = Bitmap.createBitmap(i, j, android.graphics.Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(bitmap);
                canvas.concat(mTempMatrix);
                view.draw(canvas);
            }
        }
        return bitmap;
    }

    public View onCreateSnapshotView(Context context, Parcelable parcelable)
    {
        boolean flag = parcelable instanceof Bitmap;
        ImageView imageview = null;
        if (flag)
        {
            Bitmap bitmap = (Bitmap)parcelable;
            imageview = new ImageView(context);
            imageview.setImageBitmap(bitmap);
        }
        return imageview;
    }

    public void onMapSharedElements(List list, Map map)
    {
    }

    public void onRejectSharedElements(List list)
    {
    }

    public void onSharedElementEnd(List list, List list1, List list2)
    {
    }

    public void onSharedElementStart(List list, List list1, List list2)
    {
    }
}
