// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.provider;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.DocumentsContract;
import android.text.TextUtils;
import android.util.Log;

class DocumentsContractApi19
{

    private static final String TAG = "DocumentFile";

    DocumentsContractApi19()
    {
    }

    public static boolean canRead(Context context, Uri uri)
    {
        while (context.checkCallingOrSelfUriPermission(uri, 1) != 0 || TextUtils.isEmpty(getRawType(context, uri))) 
        {
            return false;
        }
        return true;
    }

    public static boolean canWrite(Context context, Uri uri)
    {
        if (context.checkCallingOrSelfUriPermission(uri, 2) == 0)
        {
            String s = getRawType(context, uri);
            int i = queryForInt(context, uri, "flags", 0);
            if (!TextUtils.isEmpty(s))
            {
                if ((i & 4) != 0)
                {
                    return true;
                }
                if ("vnd.android.document/directory".equals(s) && (i & 8) != 0)
                {
                    return true;
                }
                if (!TextUtils.isEmpty(s) && (i & 2) != 0)
                {
                    return true;
                }
            }
        }
        return false;
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

    public static boolean delete(Context context, Uri uri)
    {
        return DocumentsContract.deleteDocument(context.getContentResolver(), uri);
    }

    public static boolean exists(Context context, Uri uri)
    {
        ContentResolver contentresolver = context.getContentResolver();
        Cursor cursor1 = contentresolver.query(uri, new String[] {
            "document_id"
        }, null, null, null);
        Cursor cursor = cursor1;
        int i = cursor.getCount();
        boolean flag;
        if (i > 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        closeQuietly(cursor);
        return flag;
        Exception exception1;
        exception1;
        cursor = null;
_L4:
        Log.w("DocumentFile", (new StringBuilder()).append("Failed query: ").append(exception1).toString());
        closeQuietly(cursor);
        return false;
        Exception exception;
        exception;
        cursor = null;
_L2:
        closeQuietly(cursor);
        throw exception;
        exception;
        if (true) goto _L2; else goto _L1
_L1:
        exception1;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static String getName(Context context, Uri uri)
    {
        return queryForString(context, uri, "_display_name", null);
    }

    private static String getRawType(Context context, Uri uri)
    {
        return queryForString(context, uri, "mime_type", null);
    }

    public static String getType(Context context, Uri uri)
    {
        String s = getRawType(context, uri);
        if ("vnd.android.document/directory".equals(s))
        {
            s = null;
        }
        return s;
    }

    public static boolean isDirectory(Context context, Uri uri)
    {
        return "vnd.android.document/directory".equals(getRawType(context, uri));
    }

    public static boolean isDocumentUri(Context context, Uri uri)
    {
        return DocumentsContract.isDocumentUri(context, uri);
    }

    public static boolean isFile(Context context, Uri uri)
    {
        String s = getRawType(context, uri);
        return !"vnd.android.document/directory".equals(s) && !TextUtils.isEmpty(s);
    }

    public static long lastModified(Context context, Uri uri)
    {
        return queryForLong(context, uri, "last_modified", 0L);
    }

    public static long length(Context context, Uri uri)
    {
        return queryForLong(context, uri, "_size", 0L);
    }

    private static int queryForInt(Context context, Uri uri, String s, int i)
    {
        return (int)queryForLong(context, uri, s, i);
    }

    private static long queryForLong(Context context, Uri uri, String s, long l)
    {
        ContentResolver contentresolver = context.getContentResolver();
        Cursor cursor1 = contentresolver.query(uri, new String[] {
            s
        }, null, null, null);
        Cursor cursor = cursor1;
        long l1;
        if (!cursor.moveToFirst() || cursor.isNull(0))
        {
            break MISSING_BLOCK_LABEL_68;
        }
        l1 = cursor.getLong(0);
        closeQuietly(cursor);
        return l1;
        closeQuietly(cursor);
        return l;
        Exception exception1;
        exception1;
        cursor = null;
_L4:
        Log.w("DocumentFile", (new StringBuilder()).append("Failed query: ").append(exception1).toString());
        closeQuietly(cursor);
        return l;
        Exception exception;
        exception;
        cursor = null;
_L2:
        closeQuietly(cursor);
        throw exception;
        exception;
        if (true) goto _L2; else goto _L1
_L1:
        exception1;
        if (true) goto _L4; else goto _L3
_L3:
    }

    private static String queryForString(Context context, Uri uri, String s, String s1)
    {
        ContentResolver contentresolver = context.getContentResolver();
        Cursor cursor1 = contentresolver.query(uri, new String[] {
            s
        }, null, null, null);
        Cursor cursor = cursor1;
        String s2;
        if (!cursor.moveToFirst() || cursor.isNull(0))
        {
            break MISSING_BLOCK_LABEL_68;
        }
        s2 = cursor.getString(0);
        closeQuietly(cursor);
        return s2;
        closeQuietly(cursor);
        return s1;
        Exception exception1;
        exception1;
        cursor = null;
_L4:
        Log.w("DocumentFile", (new StringBuilder()).append("Failed query: ").append(exception1).toString());
        closeQuietly(cursor);
        return s1;
        Exception exception;
        exception;
        cursor = null;
_L2:
        closeQuietly(cursor);
        throw exception;
        exception;
        if (true) goto _L2; else goto _L1
_L1:
        exception1;
        if (true) goto _L4; else goto _L3
_L3:
    }
}
