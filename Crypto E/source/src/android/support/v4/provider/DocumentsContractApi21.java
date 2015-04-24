// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.provider;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.DocumentsContract;
import android.util.Log;
import java.util.ArrayList;

class DocumentsContractApi21
{

    private static final String TAG = "DocumentFile";

    DocumentsContractApi21()
    {
    }

    private static void closeQuietly(AutoCloseable autocloseable)
    {
        if (autocloseable == null)
        {
            break MISSING_BLOCK_LABEL_10;
        }
        autocloseable.close();
        return;
        RuntimeException runtimeexception;
        runtimeexception;
        throw runtimeexception;
        Exception exception;
        exception;
    }

    public static Uri createDirectory(Context context, Uri uri, String s)
    {
        return createFile(context, uri, "vnd.android.document/directory", s);
    }

    public static Uri createFile(Context context, Uri uri, String s, String s1)
    {
        return DocumentsContract.createDocument(context.getContentResolver(), uri, s, s1);
    }

    public static Uri[] listFiles(Context context, Uri uri)
    {
        ContentResolver contentresolver;
        Uri uri1;
        ArrayList arraylist;
        contentresolver = context.getContentResolver();
        uri1 = DocumentsContract.buildChildDocumentsUriUsingTree(uri, DocumentsContract.getDocumentId(uri));
        arraylist = new ArrayList();
        Cursor cursor1 = contentresolver.query(uri1, new String[] {
            "document_id"
        }, null, null, null);
        Cursor cursor = cursor1;
        while (cursor.moveToNext()) 
        {
            arraylist.add(DocumentsContract.buildDocumentUriUsingTree(uri, cursor.getString(0)));
        }
          goto _L1
        Exception exception;
        exception;
_L7:
        Log.w("DocumentFile", (new StringBuilder()).append("Failed query: ").append(exception).toString());
        closeQuietly(cursor);
_L3:
        return (Uri[])arraylist.toArray(new Uri[arraylist.size()]);
_L1:
        closeQuietly(cursor);
        if (true) goto _L3; else goto _L2
_L2:
        Exception exception1;
        exception1;
        cursor = null;
_L5:
        closeQuietly(cursor);
        throw exception1;
        exception1;
        if (true) goto _L5; else goto _L4
_L4:
        exception;
        cursor = null;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public static Uri prepareTreeUri(Uri uri)
    {
        return DocumentsContract.buildDocumentUriUsingTree(uri, DocumentsContract.getTreeDocumentId(uri));
    }

    public static Uri renameTo(Context context, Uri uri, String s)
    {
        return DocumentsContract.renameDocument(context.getContentResolver(), uri, s);
    }
}
