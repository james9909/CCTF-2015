// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.io.monitor;

import java.io.File;
import java.io.Serializable;

public class FileEntry
    implements Serializable
{

    static final FileEntry EMPTY_ENTRIES[] = new FileEntry[0];
    private FileEntry children[];
    private boolean directory;
    private boolean exists;
    private final File file;
    private long lastModified;
    private long length;
    private String name;
    private final FileEntry parent;

    public FileEntry(File file1)
    {
        this((FileEntry)null, file1);
    }

    public FileEntry(FileEntry fileentry, File file1)
    {
        if (file1 == null)
        {
            throw new IllegalArgumentException("File is missing");
        } else
        {
            file = file1;
            parent = fileentry;
            name = file1.getName();
            return;
        }
    }

    public FileEntry[] getChildren()
    {
        if (children != null)
        {
            return children;
        } else
        {
            return EMPTY_ENTRIES;
        }
    }

    public File getFile()
    {
        return file;
    }

    public long getLastModified()
    {
        return lastModified;
    }

    public long getLength()
    {
        return length;
    }

    public int getLevel()
    {
        if (parent == null)
        {
            return 0;
        } else
        {
            return 1 + parent.getLevel();
        }
    }

    public String getName()
    {
        return name;
    }

    public FileEntry getParent()
    {
        return parent;
    }

    public boolean isDirectory()
    {
        return directory;
    }

    public boolean isExists()
    {
        return exists;
    }

    public FileEntry newChildInstance(File file1)
    {
        return new FileEntry(this, file1);
    }

    public boolean refresh(File file1)
    {
label0:
        {
            long l = 0L;
            boolean flag = exists;
            long l1 = lastModified;
            boolean flag1 = directory;
            long l2 = length;
            name = file1.getName();
            exists = file1.exists();
            boolean flag2;
            long l3;
            boolean flag3;
            if (exists)
            {
                flag2 = file1.isDirectory();
            } else
            {
                flag2 = false;
            }
            directory = flag2;
            if (exists)
            {
                l3 = file1.lastModified();
            } else
            {
                l3 = l;
            }
            lastModified = l3;
            if (exists && !directory)
            {
                l = file1.length();
            }
            length = l;
            if (exists == flag && lastModified == l1 && directory == flag1)
            {
                int i = length != l2;
                flag3 = false;
                if (i == 0)
                {
                    break label0;
                }
            }
            flag3 = true;
        }
        return flag3;
    }

    public void setChildren(FileEntry afileentry[])
    {
        children = afileentry;
    }

    public void setDirectory(boolean flag)
    {
        directory = flag;
    }

    public void setExists(boolean flag)
    {
        exists = flag;
    }

    public void setLastModified(long l)
    {
        lastModified = l;
    }

    public void setLength(long l)
    {
        length = l;
    }

    public void setName(String s)
    {
        name = s;
    }

}
