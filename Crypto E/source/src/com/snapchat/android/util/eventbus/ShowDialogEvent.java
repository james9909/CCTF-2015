// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.eventbus;


public class ShowDialogEvent
{
    public static class Builder
    {

        private int a;
        private int b;
        private String c;
        private DialogType d;
        private com.snapchat.android.util.AlertDialogUtils.YesNoAlertListener e;

        public Builder a(int i)
        {
            b = i;
            return this;
        }

        public Builder a(com.snapchat.android.util.AlertDialogUtils.YesNoAlertListener yesnoalertlistener)
        {
            e = yesnoalertlistener;
            return this;
        }

        public Builder a(String s)
        {
            c = s;
            return this;
        }

        public ShowDialogEvent a()
        {
            ShowDialogEvent showdialogevent = new ShowDialogEvent(d, b);
            showdialogevent.a = c;
            showdialogevent.c = a;
            showdialogevent.e = e;
            return showdialogevent;
        }

        public Builder b(int i)
        {
            a = i;
            return this;
        }

        public Builder(DialogType dialogtype)
        {
            d = dialogtype;
        }
    }

    public static final class DialogType extends Enum
    {

        public static final DialogType a;
        public static final DialogType b;
        public static final DialogType c;
        public static final DialogType d;
        private static final DialogType e[];

        public static DialogType valueOf(String s)
        {
            return (DialogType)Enum.valueOf(com/snapchat/android/util/eventbus/ShowDialogEvent$DialogType, s);
        }

        public static DialogType[] values()
        {
            return (DialogType[])e.clone();
        }

        static 
        {
            a = new DialogType("TOAST", 0);
            b = new DialogType("ONE_BUTTON", 1);
            c = new DialogType("YES_NO_DIALOG", 2);
            d = new DialogType("YES_NO_DONTASK_DIALOG", 3);
            DialogType adialogtype[] = new DialogType[4];
            adialogtype[0] = a;
            adialogtype[1] = b;
            adialogtype[2] = c;
            adialogtype[3] = d;
            e = adialogtype;
        }

        private DialogType(String s, int i)
        {
            super(s, i);
        }
    }


    public String a;
    public int b;
    public int c;
    public DialogType d;
    public com.snapchat.android.util.AlertDialogUtils.YesNoAlertListener e;

    public ShowDialogEvent(DialogType dialogtype, int i)
    {
        b = i;
        d = dialogtype;
    }

    public ShowDialogEvent(DialogType dialogtype, String s)
    {
        a = s;
        d = dialogtype;
    }
}
