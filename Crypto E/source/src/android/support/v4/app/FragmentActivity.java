// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v4.util.SimpleArrayMap;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;

// Referenced classes of package android.support.v4.app:
//            FragmentManagerImpl, LoaderManagerImpl, Fragment, ActivityCompat, 
//            ActivityCompatHoneycomb, FragmentContainer, FragmentManager, LoaderManager, 
//            SharedElementCallback

public class FragmentActivity extends Activity
{
    static final class NonConfigurationInstances
    {

        Object activity;
        SimpleArrayMap children;
        Object custom;
        ArrayList fragments;
        SimpleArrayMap loaders;

        NonConfigurationInstances()
        {
        }
    }


    static final String FRAGMENTS_TAG = "android:support:fragments";
    private static final int HONEYCOMB = 11;
    static final int MSG_REALLY_STOPPED = 1;
    static final int MSG_RESUME_PENDING = 2;
    private static final String TAG = "FragmentActivity";
    SimpleArrayMap mAllLoaderManagers;
    boolean mCheckedForLoaderManager;
    final FragmentContainer mContainer = new FragmentContainer() {

        final FragmentActivity this$0;

        public View findViewById(int i)
        {
            return FragmentActivity.this.findViewById(i);
        }

        public boolean hasView()
        {
            Window window = getWindow();
            return window != null && window.peekDecorView() != null;
        }

            
            {
                this$0 = FragmentActivity.this;
                super();
            }
    };
    boolean mCreated;
    final FragmentManagerImpl mFragments = new FragmentManagerImpl();
    final Handler mHandler = new Handler() {

        final FragmentActivity this$0;

        public void handleMessage(Message message)
        {
            message.what;
            JVM INSTR tableswitch 1 2: default 28
        //                       1 34
        //                       2 53;
               goto _L1 _L2 _L3
_L1:
            super.handleMessage(message);
_L5:
            return;
_L2:
            if (!mStopped) goto _L5; else goto _L4
_L4:
            doReallyStop(false);
            return;
_L3:
            onResumeFragments();
            mFragments.execPendingActions();
            return;
        }

            
            {
                this$0 = FragmentActivity.this;
                super();
            }
    };
    LoaderManagerImpl mLoaderManager;
    boolean mLoadersStarted;
    boolean mOptionsMenuInvalidated;
    boolean mReallyStopped;
    boolean mResumed;
    boolean mRetaining;
    boolean mStopped;

    public FragmentActivity()
    {
    }

    private void dumpViewHierarchy(String s, PrintWriter printwriter, View view)
    {
        printwriter.print(s);
        if (view != null) goto _L2; else goto _L1
_L1:
        printwriter.println("null");
_L4:
        return;
_L2:
        printwriter.println(viewToString(view));
        if (view instanceof ViewGroup)
        {
            ViewGroup viewgroup = (ViewGroup)view;
            int i = viewgroup.getChildCount();
            if (i > 0)
            {
                String s1 = (new StringBuilder()).append(s).append("  ").toString();
                int j = 0;
                while (j < i) 
                {
                    dumpViewHierarchy(s1, printwriter, viewgroup.getChildAt(j));
                    j++;
                }
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private static String viewToString(View view)
    {
        char c;
        char c1;
        StringBuilder stringbuilder;
        c = 'F';
        c1 = '.';
        stringbuilder = new StringBuilder(128);
        stringbuilder.append(view.getClass().getName());
        stringbuilder.append('{');
        stringbuilder.append(Integer.toHexString(System.identityHashCode(view)));
        stringbuilder.append(' ');
        view.getVisibility();
        JVM INSTR lookupswitch 3: default 92
    //                   0: 497
    //                   4: 507
    //                   8: 517;
           goto _L1 _L2 _L3 _L4
_L1:
        stringbuilder.append(c1);
_L11:
        String s;
        char c2;
        char c3;
        char c4;
        char c5;
        char c6;
        char c7;
        char c8;
        char c9;
        int i;
        Resources resources;
        String s1;
        String s2;
        if (view.isFocusable())
        {
            c2 = c;
        } else
        {
            c2 = c1;
        }
        stringbuilder.append(c2);
        if (view.isEnabled())
        {
            c3 = 'E';
        } else
        {
            c3 = c1;
        }
        stringbuilder.append(c3);
        if (view.willNotDraw())
        {
            c4 = c1;
        } else
        {
            c4 = 'D';
        }
        stringbuilder.append(c4);
        if (view.isHorizontalScrollBarEnabled())
        {
            c5 = 'H';
        } else
        {
            c5 = c1;
        }
        stringbuilder.append(c5);
        if (view.isVerticalScrollBarEnabled())
        {
            c6 = 'V';
        } else
        {
            c6 = c1;
        }
        stringbuilder.append(c6);
        if (view.isClickable())
        {
            c7 = 'C';
        } else
        {
            c7 = c1;
        }
        stringbuilder.append(c7);
        if (view.isLongClickable())
        {
            c8 = 'L';
        } else
        {
            c8 = c1;
        }
        stringbuilder.append(c8);
        stringbuilder.append(' ');
        if (!view.isFocused())
        {
            c = c1;
        }
        stringbuilder.append(c);
        if (view.isSelected())
        {
            c9 = 'S';
        } else
        {
            c9 = c1;
        }
        stringbuilder.append(c9);
        if (view.isPressed())
        {
            c1 = 'P';
        }
        stringbuilder.append(c1);
        stringbuilder.append(' ');
        stringbuilder.append(view.getLeft());
        stringbuilder.append(',');
        stringbuilder.append(view.getTop());
        stringbuilder.append('-');
        stringbuilder.append(view.getRight());
        stringbuilder.append(',');
        stringbuilder.append(view.getBottom());
        i = view.getId();
        if (i == -1) goto _L6; else goto _L5
_L5:
        stringbuilder.append(" #");
        stringbuilder.append(Integer.toHexString(i));
        resources = view.getResources();
        if (i == 0 || resources == null) goto _L6; else goto _L7
_L7:
        0xff000000 & i;
        JVM INSTR lookupswitch 2: default 416
    //                   16777216: 588
    //                   2130706432: 581;
           goto _L8 _L9 _L10
_L8:
        s = resources.getResourcePackageName(i);
_L12:
        s1 = resources.getResourceTypeName(i);
        s2 = resources.getResourceEntryName(i);
        stringbuilder.append(" ");
        stringbuilder.append(s);
        stringbuilder.append(":");
        stringbuilder.append(s1);
        stringbuilder.append("/");
        stringbuilder.append(s2);
_L6:
        stringbuilder.append("}");
        return stringbuilder.toString();
_L2:
        stringbuilder.append('V');
          goto _L11
_L3:
        stringbuilder.append('I');
          goto _L11
_L4:
        stringbuilder.append('G');
          goto _L11
_L10:
        s = "app";
          goto _L12
_L9:
        s = "android";
          goto _L12
        android.content.res.Resources.NotFoundException notfoundexception;
        notfoundexception;
          goto _L6
    }

    void doReallyStop(boolean flag)
    {
        if (!mReallyStopped)
        {
            mReallyStopped = true;
            mRetaining = flag;
            mHandler.removeMessages(1);
            onReallyStop();
        }
    }

    public void dump(String s, FileDescriptor filedescriptor, PrintWriter printwriter, String as[])
    {
        if (android.os.Build.VERSION.SDK_INT < 11);
        printwriter.print(s);
        printwriter.print("Local FragmentActivity ");
        printwriter.print(Integer.toHexString(System.identityHashCode(this)));
        printwriter.println(" State:");
        String s1 = (new StringBuilder()).append(s).append("  ").toString();
        printwriter.print(s1);
        printwriter.print("mCreated=");
        printwriter.print(mCreated);
        printwriter.print("mResumed=");
        printwriter.print(mResumed);
        printwriter.print(" mStopped=");
        printwriter.print(mStopped);
        printwriter.print(" mReallyStopped=");
        printwriter.println(mReallyStopped);
        printwriter.print(s1);
        printwriter.print("mLoadersStarted=");
        printwriter.println(mLoadersStarted);
        if (mLoaderManager != null)
        {
            printwriter.print(s);
            printwriter.print("Loader Manager ");
            printwriter.print(Integer.toHexString(System.identityHashCode(mLoaderManager)));
            printwriter.println(":");
            mLoaderManager.dump((new StringBuilder()).append(s).append("  ").toString(), filedescriptor, printwriter, as);
        }
        mFragments.dump(s, filedescriptor, printwriter, as);
        printwriter.print(s);
        printwriter.println("View Hierarchy:");
        dumpViewHierarchy((new StringBuilder()).append(s).append("  ").toString(), printwriter, getWindow().getDecorView());
    }

    public Object getLastCustomNonConfigurationInstance()
    {
        NonConfigurationInstances nonconfigurationinstances = (NonConfigurationInstances)getLastNonConfigurationInstance();
        if (nonconfigurationinstances != null)
        {
            return nonconfigurationinstances.custom;
        } else
        {
            return null;
        }
    }

    LoaderManagerImpl getLoaderManager(String s, boolean flag, boolean flag1)
    {
        if (mAllLoaderManagers == null)
        {
            mAllLoaderManagers = new SimpleArrayMap();
        }
        LoaderManagerImpl loadermanagerimpl = (LoaderManagerImpl)mAllLoaderManagers.get(s);
        if (loadermanagerimpl == null)
        {
            if (flag1)
            {
                loadermanagerimpl = new LoaderManagerImpl(s, this, flag);
                mAllLoaderManagers.put(s, loadermanagerimpl);
            }
            return loadermanagerimpl;
        } else
        {
            loadermanagerimpl.updateActivity(this);
            return loadermanagerimpl;
        }
    }

    public FragmentManager getSupportFragmentManager()
    {
        return mFragments;
    }

    public LoaderManager getSupportLoaderManager()
    {
        if (mLoaderManager != null)
        {
            return mLoaderManager;
        } else
        {
            mCheckedForLoaderManager = true;
            mLoaderManager = getLoaderManager("(root)", mLoadersStarted, true);
            return mLoaderManager;
        }
    }

    void invalidateSupportFragment(String s)
    {
        if (mAllLoaderManagers != null)
        {
            LoaderManagerImpl loadermanagerimpl = (LoaderManagerImpl)mAllLoaderManagers.get(s);
            if (loadermanagerimpl != null && !loadermanagerimpl.mRetaining)
            {
                loadermanagerimpl.doDestroy();
                mAllLoaderManagers.remove(s);
            }
        }
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        mFragments.noteStateNotSaved();
        int k = i >> 16;
        if (k != 0)
        {
            int l = k - 1;
            if (mFragments.mActive == null || l < 0 || l >= mFragments.mActive.size())
            {
                Log.w("FragmentActivity", (new StringBuilder()).append("Activity result fragment index out of range: 0x").append(Integer.toHexString(i)).toString());
                return;
            }
            Fragment fragment = (Fragment)mFragments.mActive.get(l);
            if (fragment == null)
            {
                Log.w("FragmentActivity", (new StringBuilder()).append("Activity result no fragment exists for index: 0x").append(Integer.toHexString(i)).toString());
                return;
            } else
            {
                fragment.onActivityResult(0xffff & i, j, intent);
                return;
            }
        } else
        {
            super.onActivityResult(i, j, intent);
            return;
        }
    }

    public void onAttachFragment(Fragment fragment)
    {
    }

    public void onBackPressed()
    {
        if (!mFragments.popBackStackImmediate())
        {
            supportFinishAfterTransition();
        }
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
        mFragments.dispatchConfigurationChanged(configuration);
    }

    public void onCreate(Bundle bundle)
    {
        mFragments.attachActivity(this, mContainer, null);
        if (getLayoutInflater().getFactory() == null)
        {
            getLayoutInflater().setFactory(this);
        }
        super.onCreate(bundle);
        NonConfigurationInstances nonconfigurationinstances = (NonConfigurationInstances)getLastNonConfigurationInstance();
        if (nonconfigurationinstances != null)
        {
            mAllLoaderManagers = nonconfigurationinstances.loaders;
        }
        if (bundle != null)
        {
            android.os.Parcelable parcelable = bundle.getParcelable("android:support:fragments");
            FragmentManagerImpl fragmentmanagerimpl = mFragments;
            ArrayList arraylist;
            if (nonconfigurationinstances != null)
            {
                arraylist = nonconfigurationinstances.fragments;
            } else
            {
                arraylist = null;
            }
            fragmentmanagerimpl.restoreAllState(parcelable, arraylist);
        }
        mFragments.dispatchCreate();
    }

    public boolean onCreatePanelMenu(int i, Menu menu)
    {
        if (i == 0)
        {
            boolean flag = super.onCreatePanelMenu(i, menu) | mFragments.dispatchCreateOptionsMenu(menu, getMenuInflater());
            if (android.os.Build.VERSION.SDK_INT >= 11)
            {
                return flag;
            } else
            {
                return true;
            }
        } else
        {
            return super.onCreatePanelMenu(i, menu);
        }
    }

    public View onCreateView(String s, Context context, AttributeSet attributeset)
    {
        View view;
        if (!"fragment".equals(s))
        {
            view = super.onCreateView(s, context, attributeset);
        } else
        {
            view = mFragments.onCreateView(s, context, attributeset);
            if (view == null)
            {
                return super.onCreateView(s, context, attributeset);
            }
        }
        return view;
    }

    public void onDestroy()
    {
        super.onDestroy();
        doReallyStop(false);
        mFragments.dispatchDestroy();
        if (mLoaderManager != null)
        {
            mLoaderManager.doDestroy();
        }
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if (android.os.Build.VERSION.SDK_INT < 5 && i == 4 && keyevent.getRepeatCount() == 0)
        {
            onBackPressed();
            return true;
        } else
        {
            return super.onKeyDown(i, keyevent);
        }
    }

    public void onLowMemory()
    {
        super.onLowMemory();
        mFragments.dispatchLowMemory();
    }

    public boolean onMenuItemSelected(int i, MenuItem menuitem)
    {
        if (super.onMenuItemSelected(i, menuitem))
        {
            return true;
        }
        switch (i)
        {
        default:
            return false;

        case 0: // '\0'
            return mFragments.dispatchOptionsItemSelected(menuitem);

        case 6: // '\006'
            return mFragments.dispatchContextItemSelected(menuitem);
        }
    }

    public void onNewIntent(Intent intent)
    {
        super.onNewIntent(intent);
        mFragments.noteStateNotSaved();
    }

    public void onPanelClosed(int i, Menu menu)
    {
        i;
        JVM INSTR tableswitch 0 0: default 20
    //                   0 27;
           goto _L1 _L2
_L1:
        super.onPanelClosed(i, menu);
        return;
_L2:
        mFragments.dispatchOptionsMenuClosed(menu);
        if (true) goto _L1; else goto _L3
_L3:
    }

    public void onPause()
    {
        super.onPause();
        mResumed = false;
        if (mHandler.hasMessages(2))
        {
            mHandler.removeMessages(2);
            onResumeFragments();
        }
        mFragments.dispatchPause();
    }

    protected void onPostResume()
    {
        super.onPostResume();
        mHandler.removeMessages(2);
        onResumeFragments();
        mFragments.execPendingActions();
    }

    protected boolean onPrepareOptionsPanel(View view, Menu menu)
    {
        return super.onPreparePanel(0, view, menu);
    }

    public boolean onPreparePanel(int i, View view, Menu menu)
    {
        if (i == 0 && menu != null)
        {
            if (mOptionsMenuInvalidated)
            {
                mOptionsMenuInvalidated = false;
                menu.clear();
                onCreatePanelMenu(i, menu);
            }
            return onPrepareOptionsPanel(view, menu) | mFragments.dispatchPrepareOptionsMenu(menu);
        } else
        {
            return super.onPreparePanel(i, view, menu);
        }
    }

    void onReallyStop()
    {
        if (mLoadersStarted)
        {
            mLoadersStarted = false;
            if (mLoaderManager != null)
            {
                if (!mRetaining)
                {
                    mLoaderManager.doStop();
                } else
                {
                    mLoaderManager.doRetain();
                }
            }
        }
        mFragments.dispatchReallyStop();
    }

    public void onResume()
    {
        super.onResume();
        mHandler.sendEmptyMessage(2);
        mResumed = true;
        mFragments.execPendingActions();
    }

    protected void onResumeFragments()
    {
        mFragments.dispatchResume();
    }

    public Object onRetainCustomNonConfigurationInstance()
    {
        return null;
    }

    public final Object onRetainNonConfigurationInstance()
    {
        int i = 0;
        if (mStopped)
        {
            doReallyStop(true);
        }
        Object obj = onRetainCustomNonConfigurationInstance();
        ArrayList arraylist = mFragments.retainNonConfig();
        boolean flag;
        if (mAllLoaderManagers != null)
        {
            int j = mAllLoaderManagers.size();
            LoaderManagerImpl aloadermanagerimpl[] = new LoaderManagerImpl[j];
            for (int k = j - 1; k >= 0; k--)
            {
                aloadermanagerimpl[k] = (LoaderManagerImpl)mAllLoaderManagers.valueAt(k);
            }

            flag = false;
            while (i < j) 
            {
                LoaderManagerImpl loadermanagerimpl = aloadermanagerimpl[i];
                if (loadermanagerimpl.mRetaining)
                {
                    flag = true;
                } else
                {
                    loadermanagerimpl.doDestroy();
                    mAllLoaderManagers.remove(loadermanagerimpl.mWho);
                }
                i++;
            }
        } else
        {
            flag = false;
        }
        if (arraylist == null && !flag && obj == null)
        {
            return null;
        } else
        {
            NonConfigurationInstances nonconfigurationinstances = new NonConfigurationInstances();
            nonconfigurationinstances.activity = null;
            nonconfigurationinstances.custom = obj;
            nonconfigurationinstances.children = null;
            nonconfigurationinstances.fragments = arraylist;
            nonconfigurationinstances.loaders = mAllLoaderManagers;
            return nonconfigurationinstances;
        }
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        android.os.Parcelable parcelable = mFragments.saveAllState();
        if (parcelable != null)
        {
            bundle.putParcelable("android:support:fragments", parcelable);
        }
    }

    public void onStart()
    {
        super.onStart();
        mStopped = false;
        mReallyStopped = false;
        mHandler.removeMessages(1);
        if (!mCreated)
        {
            mCreated = true;
            mFragments.dispatchActivityCreated();
        }
        mFragments.noteStateNotSaved();
        mFragments.execPendingActions();
        if (!mLoadersStarted)
        {
            mLoadersStarted = true;
            int j;
            if (mLoaderManager != null)
            {
                mLoaderManager.doStart();
            } else
            if (!mCheckedForLoaderManager)
            {
                mLoaderManager = getLoaderManager("(root)", mLoadersStarted, false);
                if (mLoaderManager != null && !mLoaderManager.mStarted)
                {
                    mLoaderManager.doStart();
                }
            }
            mCheckedForLoaderManager = true;
        }
        mFragments.dispatchStart();
        if (mAllLoaderManagers != null)
        {
            int i = mAllLoaderManagers.size();
            LoaderManagerImpl aloadermanagerimpl[] = new LoaderManagerImpl[i];
            for (j = i - 1; j >= 0; j--)
            {
                aloadermanagerimpl[j] = (LoaderManagerImpl)mAllLoaderManagers.valueAt(j);
            }

            for (int k = 0; k < i; k++)
            {
                LoaderManagerImpl loadermanagerimpl = aloadermanagerimpl[k];
                loadermanagerimpl.finishRetain();
                loadermanagerimpl.doReportStart();
            }

        }
    }

    public void onStop()
    {
        super.onStop();
        mStopped = true;
        mHandler.sendEmptyMessage(1);
        mFragments.dispatchStop();
    }

    public void setEnterSharedElementCallback(SharedElementCallback sharedelementcallback)
    {
        ActivityCompat.setEnterSharedElementCallback(this, sharedelementcallback);
    }

    public void setExitSharedElementCallback(SharedElementCallback sharedelementcallback)
    {
        ActivityCompat.setExitSharedElementCallback(this, sharedelementcallback);
    }

    public void startActivityForResult(Intent intent, int i)
    {
        if (i != -1 && (0xffff0000 & i) != 0)
        {
            throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
        } else
        {
            super.startActivityForResult(intent, i);
            return;
        }
    }

    public void startActivityFromFragment(Fragment fragment, Intent intent, int i)
    {
        if (i == -1)
        {
            super.startActivityForResult(intent, -1);
            return;
        }
        if ((0xffff0000 & i) != 0)
        {
            throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
        } else
        {
            super.startActivityForResult(intent, (1 + fragment.mIndex << 16) + (0xffff & i));
            return;
        }
    }

    public void supportFinishAfterTransition()
    {
        ActivityCompat.finishAfterTransition(this);
    }

    public void supportInvalidateOptionsMenu()
    {
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            ActivityCompatHoneycomb.invalidateOptionsMenu(this);
            return;
        } else
        {
            mOptionsMenuInvalidated = true;
            return;
        }
    }

    public void supportPostponeEnterTransition()
    {
        ActivityCompat.postponeEnterTransition(this);
    }

    public void supportStartPostponedEnterTransition()
    {
        ActivityCompat.startPostponedEnterTransition(this);
    }
}