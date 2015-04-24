// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.print;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.print.PageRange;
import android.print.PrintAttributes;
import android.print.PrintDocumentAdapter;
import android.print.pdf.PrintedPdfDocument;
import android.util.Log;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

// Referenced classes of package android.support.v4.print:
//            PrintHelperKitkat

class mBitmap extends PrintDocumentAdapter
{

    AsyncTask loadBitmap;
    private PrintAttributes mAttributes;
    Bitmap mBitmap;
    final PrintHelperKitkat this$0;
    final PrintFinishCallback val$callback;
    final int val$fittingMode;
    final Uri val$imageFile;
    final String val$jobName;

    private void cancelLoad()
    {
        synchronized (PrintHelperKitkat.access$300(PrintHelperKitkat.this))
        {
            if (mDecodeOptions != null)
            {
                mDecodeOptions.requestCancelDecode();
                mDecodeOptions = null;
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void onFinish()
    {
        super.onFinish();
        cancelLoad();
        loadBitmap.cancel(true);
        if (val$callback != null)
        {
            val$callback.onFinish();
        }
    }

    public void onLayout(final PrintAttributes oldPrintAttributes, final PrintAttributes newPrintAttributes, final CancellationSignal cancellationSignal, final android.print..LayoutResultCallback layoutResultCallback, Bundle bundle)
    {
        boolean flag = true;
        if (cancellationSignal.isCanceled())
        {
            layoutResultCallback.onLayoutCancelled();
            mAttributes = newPrintAttributes;
            return;
        }
        if (mBitmap != null)
        {
            android.print.PrintDocumentInfo printdocumentinfo = (new android.print.ilder(val$jobName)).setContentType(flag).setPageCount(flag).build();
            if (newPrintAttributes.equals(oldPrintAttributes))
            {
                flag = false;
            }
            layoutResultCallback.onLayoutFinished(printdocumentinfo, flag);
            return;
        } else
        {
            loadBitmap = new AsyncTask() {

                final PrintHelperKitkat._cls2 this$1;
                final CancellationSignal val$cancellationSignal;
                final android.print.PrintDocumentAdapter.LayoutResultCallback val$layoutResultCallback;
                final PrintAttributes val$newPrintAttributes;
                final PrintAttributes val$oldPrintAttributes;

                protected transient Bitmap doInBackground(Uri auri[])
                {
                    Bitmap bitmap;
                    try
                    {
                        bitmap = PrintHelperKitkat.access$200(this$0, imageFile, 3500);
                    }
                    catch (FileNotFoundException filenotfoundexception)
                    {
                        return null;
                    }
                    return bitmap;
                }

                protected volatile Object doInBackground(Object aobj[])
                {
                    return doInBackground((Uri[])aobj);
                }

                protected void onCancelled(Bitmap bitmap)
                {
                    layoutResultCallback.onLayoutCancelled();
                }

                protected volatile void onCancelled(Object obj)
                {
                    onCancelled((Bitmap)obj);
                }

                protected void onPostExecute(Bitmap bitmap)
                {
                    boolean flag1 = true;
                    super.onPostExecute(bitmap);
                    mBitmap = bitmap;
                    if (bitmap != null)
                    {
                        android.print.PrintDocumentInfo printdocumentinfo1 = (new android.print.PrintDocumentInfo.Builder(jobName)).setContentType(flag1).setPageCount(flag1).build();
                        if (newPrintAttributes.equals(oldPrintAttributes))
                        {
                            flag1 = false;
                        }
                        layoutResultCallback.onLayoutFinished(printdocumentinfo1, flag1);
                        return;
                    } else
                    {
                        layoutResultCallback.onLayoutFailed(null);
                        return;
                    }
                }

                protected volatile void onPostExecute(Object obj)
                {
                    onPostExecute((Bitmap)obj);
                }

                protected void onPreExecute()
                {
                    cancellationSignal.setOnCancelListener(new android.os.CancellationSignal.OnCancelListener() {

                        final _cls1 this$2;

                        public void onCancel()
                        {
                            cancelLoad();
                            cancel(false);
                        }

            
            {
                this$2 = _cls1.this;
                super();
            }
                    });
                }

            
            {
                this$1 = PrintHelperKitkat._cls2.this;
                cancellationSignal = cancellationsignal;
                newPrintAttributes = printattributes;
                oldPrintAttributes = printattributes1;
                layoutResultCallback = layoutresultcallback;
                super();
            }
            };
            loadBitmap.execute(new Uri[0]);
            mAttributes = newPrintAttributes;
            return;
        }
    }

    public void onWrite(PageRange apagerange[], ParcelFileDescriptor parcelfiledescriptor, CancellationSignal cancellationsignal, android.print..WriteResultCallback writeresultcallback)
    {
        PrintedPdfDocument printedpdfdocument = new PrintedPdfDocument(mContext, mAttributes);
        android.graphics.pdf.t t = printedpdfdocument.startPage(1);
        RectF rectf = new RectF(t.Info().getContentRect());
        android.graphics.Matrix matrix = PrintHelperKitkat.access$000(PrintHelperKitkat.this, mBitmap.getWidth(), mBitmap.getHeight(), rectf, val$fittingMode);
        t.Canvas().drawBitmap(mBitmap, matrix, null);
        printedpdfdocument.finishPage(t);
        printedpdfdocument.writeTo(new FileOutputStream(parcelfiledescriptor.getFileDescriptor()));
        PageRange apagerange1[] = new PageRange[1];
        apagerange1[0] = PageRange.ALL_PAGES;
        writeresultcallback.onWriteFinished(apagerange1);
_L2:
        if (printedpdfdocument != null)
        {
            printedpdfdocument.close();
        }
        if (parcelfiledescriptor == null)
        {
            break MISSING_BLOCK_LABEL_150;
        }
        parcelfiledescriptor.close();
        return;
        IOException ioexception1;
        ioexception1;
        Log.e("PrintHelperKitkat", "Error writing printed content", ioexception1);
        writeresultcallback.onWriteFailed(null);
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        if (printedpdfdocument != null)
        {
            printedpdfdocument.close();
        }
        IOException ioexception2;
        if (parcelfiledescriptor != null)
        {
            try
            {
                parcelfiledescriptor.close();
            }
            catch (IOException ioexception) { }
        }
        throw exception;
        ioexception2;
    }


    PrintFinishCallback()
    {
        this$0 = final_printhelperkitkat;
        val$jobName = s;
        val$imageFile = uri;
        val$callback = printfinishcallback;
        val$fittingMode = I.this;
        super();
        mBitmap = null;
    }
}
