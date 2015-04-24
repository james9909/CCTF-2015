// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.widget.EditText;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class CursorCallbackEditText extends EditText
{
    static class SavedState extends android.view.View.BaseSavedState
    {

        public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

            public SavedState a(Parcel parcel)
            {
                return new SavedState(parcel);
            }

            public SavedState[] a(int i)
            {
                return new SavedState[i];
            }

            public Object createFromParcel(Parcel parcel)
            {
                return a(parcel);
            }

            public Object[] newArray(int i)
            {
                return a(i);
            }

        };
        String a;

        public void writeToParcel(Parcel parcel, int i)
        {
            super.writeToParcel(parcel, i);
            parcel.writeString(a);
        }


        private SavedState(Parcel parcel)
        {
            super(parcel);
            a = parcel.readString();
        }


        SavedState(Parcelable parcelable)
        {
            super(parcelable);
        }
    }

    public static interface SelectionChangedListener
    {

        public abstract void a(int i, int j);
    }


    private List a;

    public CursorCallbackEditText(Context context)
    {
        super(context);
    }

    public CursorCallbackEditText(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public CursorCallbackEditText(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    public void a(SelectionChangedListener selectionchangedlistener)
    {
        if (selectionchangedlistener == null)
        {
            throw new NullPointerException();
        }
        if (a == null)
        {
            a = new ArrayList();
        }
        a.add(selectionchangedlistener);
    }

    public void onRestoreInstanceState(Parcelable parcelable)
    {
        if (!(parcelable instanceof SavedState))
        {
            super.onRestoreInstanceState(parcelable);
            return;
        } else
        {
            SavedState savedstate = (SavedState)parcelable;
            super.onRestoreInstanceState(savedstate.getSuperState());
            setText(savedstate.a);
            return;
        }
    }

    public Parcelable onSaveInstanceState()
    {
        SavedState savedstate = new SavedState(super.onSaveInstanceState());
        savedstate.a = getText().toString();
        return savedstate;
    }

    protected void onSelectionChanged(int i, int j)
    {
        super.onSelectionChanged(i, j);
        if (a != null)
        {
            for (Iterator iterator = a.iterator(); iterator.hasNext(); ((SelectionChangedListener)iterator.next()).a(i, j)) { }
        }
    }
}
