// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.emilsjolander.components.stickylistheaders;

import android.content.Context;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.AbsListView;
import android.widget.Adapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SectionIndexer;
import java.lang.reflect.Field;
import java.util.ArrayList;

// Referenced classes of package com.emilsjolander.components.stickylistheaders:
//            AdapterWrapper, WrapperView, SectionIndexerAdapterWrapper, StickyListHeadersAdapter

public class StickyListHeadersListView extends ListView
{
    public static interface OnHeaderClickListener
    {

        public abstract void onHeaderClick(StickyListHeadersListView stickylistheaderslistview, View view, int i, long l, boolean flag);
    }


    private AdapterWrapper mAdapter;
    private AdapterWrapper.OnHeaderClickListener mAdapterHeaderClickListener = new AdapterWrapper.OnHeaderClickListener() {

        final StickyListHeadersListView this$0;

        public void onHeaderClick(View view, int j, long l)
        {
            if (mOnHeaderClickListener != null)
            {
                mOnHeaderClickListener.onHeaderClick(StickyListHeadersListView.this, view, j, l, false);
            }
        }

            
            {
                this$0 = StickyListHeadersListView.this;
                super();
            }
    };
    private boolean mAreHeadersSticky;
    private final Rect mClippingRect;
    private Boolean mClippingToPadding;
    private Long mCurrentHeaderId;
    private DataSetObserver mDataSetChangedObserver = new DataSetObserver() {

        final StickyListHeadersListView this$0;

        public void onChanged()
        {
            reset();
        }

        public void onInvalidated()
        {
            reset();
        }

            
            {
                this$0 = StickyListHeadersListView.this;
                super();
            }
    };
    private Drawable mDivider;
    private int mDividerHeight;
    private boolean mDrawingListUnderStickyHeader;
    private ArrayList mFooterViews;
    private View mHeader;
    private boolean mHeaderBeingPressed;
    private int mHeaderBottomPosition;
    private float mHeaderDownY;
    private Integer mHeaderPosition;
    private OnHeaderClickListener mOnHeaderClickListener;
    private android.widget.AbsListView.OnScrollListener mOnScrollListener = new android.widget.AbsListView.OnScrollListener() {

        final StickyListHeadersListView this$0;

        public void onScroll(AbsListView abslistview, int j, int k, int l)
        {
            if (mOnScrollListenerDelegate != null)
            {
                mOnScrollListenerDelegate.onScroll(abslistview, j, k, l);
            }
            if (android.os.Build.VERSION.SDK_INT >= 8)
            {
                scrollChanged(j);
            }
        }

        public void onScrollStateChanged(AbsListView abslistview, int j)
        {
            if (mOnScrollListenerDelegate != null)
            {
                mOnScrollListenerDelegate.onScrollStateChanged(abslistview, j);
            }
        }

            
            {
                this$0 = StickyListHeadersListView.this;
                super();
            }
    };
    private android.widget.AbsListView.OnScrollListener mOnScrollListenerDelegate;
    private Field mSelectorPositionField;
    private Rect mSelectorRect;
    private ViewConfiguration mViewConfig;

    public StickyListHeadersListView(Context context)
    {
        this(context, null);
    }

    public StickyListHeadersListView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0x1010074);
    }

    public StickyListHeadersListView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        mAreHeadersSticky = true;
        mClippingRect = new Rect();
        mCurrentHeaderId = null;
        mHeaderDownY = -1F;
        mHeaderBeingPressed = false;
        mDrawingListUnderStickyHeader = false;
        mSelectorRect = new Rect();
        super.setOnScrollListener(mOnScrollListener);
        super.setDivider(null);
        super.setDividerHeight(0);
        mViewConfig = ViewConfiguration.get(context);
        if (mClippingToPadding == null)
        {
            mClippingToPadding = Boolean.valueOf(true);
        }
        try
        {
            Field field = android/widget/AbsListView.getDeclaredField("mSelectorRect");
            field.setAccessible(true);
            mSelectorRect = (Rect)field.get(this);
            if (android.os.Build.VERSION.SDK_INT >= 14)
            {
                mSelectorPositionField = android/widget/AbsListView.getDeclaredField("mSelectorPosition");
                mSelectorPositionField.setAccessible(true);
            }
            return;
        }
        catch (NoSuchFieldException nosuchfieldexception)
        {
            nosuchfieldexception.printStackTrace();
            return;
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            illegalargumentexception.printStackTrace();
            return;
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            illegalaccessexception.printStackTrace();
        }
    }

    public static int convertDpToPixel(float f, Context context)
    {
        return (int)(f * ((float)context.getResources().getDisplayMetrics().densityDpi / 160F));
    }

    private void drawStickyHeader(Canvas canvas)
    {
        if (mHeader == null)
        {
            return;
        }
        int i = getHeaderHeight();
        int j = mHeaderBottomPosition - i;
        mClippingRect.left = getPaddingLeft();
        mClippingRect.right = getWidth() - getPaddingRight();
        mClippingRect.bottom = i + j;
        Rect rect = mClippingRect;
        int k;
        if (mClippingToPadding.booleanValue())
        {
            k = getPaddingTop();
        } else
        {
            k = 0;
        }
        rect.top = k;
        canvas.save();
        canvas.clipRect(mClippingRect);
        canvas.translate(getPaddingLeft(), j);
        mHeader.draw(canvas);
        canvas.restore();
    }

    private int fixedFirstVisibleItem(int i)
    {
        if (android.os.Build.VERSION.SDK_INT < 11) goto _L2; else goto _L1
_L1:
        return i;
_L2:
        int j = 0;
_L4:
        if (j >= getChildCount())
        {
            continue; /* Loop/switch isn't completed */
        }
        if (getChildAt(j).getBottom() < 0)
        {
            break MISSING_BLOCK_LABEL_71;
        }
        i += j;
        if (mClippingToPadding.booleanValue() || getPaddingTop() <= 0 || super.getChildAt(0).getTop() <= 0 || i <= 0) goto _L1; else goto _L3
_L3:
        return i - 1;
        j++;
          goto _L4
    }

    private int getHeaderHeight()
    {
        if (mHeader == null)
        {
            return 0;
        } else
        {
            return mHeader.getMeasuredHeight();
        }
    }

    private int getSelectorPosition()
    {
        if (mSelectorPositionField == null)
        {
            for (int j = 0; j < getChildCount(); j++)
            {
                if (getChildAt(j).getBottom() == mSelectorRect.bottom)
                {
                    return j + fixedFirstVisibleItem(getFirstVisiblePosition());
                }
            }

            break MISSING_BLOCK_LABEL_72;
        }
        int i = mSelectorPositionField.getInt(this);
        return i;
        IllegalArgumentException illegalargumentexception;
        illegalargumentexception;
        illegalargumentexception.printStackTrace();
_L2:
        return -1;
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
        illegalaccessexception.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
    }

    private boolean hasStickyHeaderAtPosition(int i)
    {
        int j = i - getHeaderViewsCount();
        return mAreHeadersSticky && j > 0 && j < mAdapter.getCount() && mAdapter.getHeaderId(j) == mAdapter.getHeaderId(j - 1);
    }

    private boolean isScrollBarOverlay()
    {
        int i = getScrollBarStyle();
        return i == 0 || i == 0x2000000;
    }

    private void measureHeader()
    {
        int i = getWidth() - getPaddingLeft() - convertDpToPixel(32F, getContext());
        int j;
        int k;
        android.view.ViewGroup.LayoutParams layoutparams;
        int l;
        if (isScrollBarOverlay())
        {
            j = 0;
        } else
        {
            j = getVerticalScrollbarWidth();
        }
        k = android.view.View.MeasureSpec.makeMeasureSpec(i - j, 0x40000000);
        layoutparams = mHeader.getLayoutParams();
        if (layoutparams == null)
        {
            mHeader.setLayoutParams(new android.view.ViewGroup.MarginLayoutParams(-1, -2));
        }
        if (layoutparams != null && layoutparams.height > 0)
        {
            l = android.view.View.MeasureSpec.makeMeasureSpec(layoutparams.height, 0x40000000);
        } else
        {
            l = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
        }
        mHeader.measure(k, l);
        if (android.os.Build.VERSION.SDK_INT >= 17)
        {
            mHeader.setLayoutDirection(getLayoutDirection());
        }
        mHeader.layout(getPaddingLeft(), 0, getWidth() - convertDpToPixel(32F, getContext()), mHeader.getMeasuredHeight());
    }

    private void positionSelectorRect()
    {
        if (!mSelectorRect.isEmpty())
        {
            int i = getSelectorPosition();
            if (i >= 0)
            {
                View view = getChildAt(i - fixedFirstVisibleItem(getFirstVisiblePosition()));
                if (view instanceof WrapperView)
                {
                    WrapperView wrapperview = (WrapperView)view;
                    mSelectorRect.top = wrapperview.getTop() + wrapperview.mItemTop;
                }
            }
        }
    }

    private void reset()
    {
        mHeader = null;
        mCurrentHeaderId = null;
        mHeaderPosition = null;
        mHeaderBottomPosition = -1;
    }

    private void scrollChanged(int i)
    {
        int j;
        if (mAdapter == null)
        {
            j = 0;
        } else
        {
            j = mAdapter.getCount();
        }
        if (j == 0 || !mAreHeadersSticky)
        {
            return;
        }
        int k = getHeaderViewsCount();
        int l = fixedFirstVisibleItem(i) - k;
        if (l < 0 || l > j - 1)
        {
            reset();
            updateHeaderVisibilities();
            invalidate();
            return;
        }
        if (mHeaderPosition == null || mHeaderPosition.intValue() != l)
        {
            mHeaderPosition = Integer.valueOf(l);
            mCurrentHeaderId = Long.valueOf(mAdapter.getHeaderId(l));
            mHeader = mAdapter.getHeaderView(mHeaderPosition.intValue(), mHeader, this);
            measureHeader();
        }
        int i1 = getChildCount();
        if (i1 != 0)
        {
            View view = null;
            int j1 = 0x7fffffff;
            int k1 = 0;
            boolean flag = false;
            while (k1 < i1) 
            {
                View view1 = super.getChildAt(k1);
                boolean flag3;
                int l2;
                int i3;
                int j3;
                boolean flag4;
                int k3;
                if (mFooterViews != null && mFooterViews.contains(view1))
                {
                    flag3 = true;
                } else
                {
                    flag3 = false;
                }
                l2 = view1.getTop();
                if (mClippingToPadding.booleanValue())
                {
                    i3 = getPaddingTop();
                } else
                {
                    i3 = 0;
                }
                j3 = l2 - i3;
                int l1;
                boolean flag1;
                int i2;
                boolean flag2;
                int j2;
                int k2;
                if (j3 < 0)
                {
                    flag4 = flag;
                    view1 = view;
                    k3 = j1;
                } else
                if (view == null || !flag && !((WrapperView)view).hasHeader() || (flag3 || ((WrapperView)view1).hasHeader()) && j3 < j1)
                {
                    flag4 = flag3;
                    k3 = j3;
                } else
                {
                    flag4 = flag;
                    view1 = view;
                    k3 = j1;
                }
                k1++;
                j1 = k3;
                flag = flag4;
                view = view1;
            }
            l1 = getHeaderHeight();
            if (view != null && (flag || ((WrapperView)view).hasHeader()))
            {
                if (l == k && super.getChildAt(0).getTop() > 0 && !mClippingToPadding.booleanValue())
                {
                    mHeaderBottomPosition = 0;
                } else
                {
                    flag2 = mClippingToPadding.booleanValue();
                    j2 = 0;
                    if (flag2)
                    {
                        j2 = getPaddingTop();
                    }
                    mHeaderBottomPosition = Math.min(view.getTop(), l1 + j2);
                    if (mHeaderBottomPosition < j2)
                    {
                        k2 = l1 + j2;
                    } else
                    {
                        k2 = mHeaderBottomPosition;
                    }
                    mHeaderBottomPosition = k2;
                }
            } else
            {
                flag1 = mClippingToPadding.booleanValue();
                i2 = 0;
                if (flag1)
                {
                    i2 = getPaddingTop();
                }
                mHeaderBottomPosition = l1 + i2;
            }
        }
        updateHeaderVisibilities();
        invalidate();
    }

    private void updateHeaderVisibilities()
    {
        int i;
        int j;
        int k;
        if (mClippingToPadding.booleanValue())
        {
            i = getPaddingTop();
        } else
        {
            i = 0;
        }
        j = getChildCount();
        k = 0;
        while (k < j) 
        {
            View view = super.getChildAt(k);
            if (!(view instanceof WrapperView))
            {
                continue;
            }
            WrapperView wrapperview = (WrapperView)view;
            if (wrapperview.hasHeader())
            {
                View view1 = wrapperview.mHeader;
                if (wrapperview.getTop() < i)
                {
                    view1.setVisibility(4);
                } else
                {
                    view1.setVisibility(0);
                }
            }
            k++;
        }
    }

    private AdapterWrapper wrapAdapter(ListAdapter listadapter)
    {
        Object obj;
        if (listadapter instanceof SectionIndexer)
        {
            obj = new SectionIndexerAdapterWrapper(getContext(), (StickyListHeadersAdapter)listadapter);
        } else
        {
            obj = new AdapterWrapper(getContext(), (StickyListHeadersAdapter)listadapter);
        }
        ((AdapterWrapper) (obj)).setDivider(mDivider);
        ((AdapterWrapper) (obj)).setDividerHeight(mDividerHeight);
        ((AdapterWrapper) (obj)).registerDataSetObserver(mDataSetChangedObserver);
        ((AdapterWrapper) (obj)).setOnHeaderClickListener(mAdapterHeaderClickListener);
        return ((AdapterWrapper) (obj));
    }

    public void addFooterView(View view)
    {
        super.addFooterView(view);
        if (mFooterViews == null)
        {
            mFooterViews = new ArrayList();
        }
        mFooterViews.add(view);
    }

    protected void dispatchDraw(Canvas canvas)
    {
        if (android.os.Build.VERSION.SDK_INT < 8)
        {
            scrollChanged(getFirstVisiblePosition());
        }
        positionSelectorRect();
        if (!mAreHeadersSticky || mHeader == null)
        {
            super.dispatchDraw(canvas);
            return;
        }
        if (!mDrawingListUnderStickyHeader)
        {
            mClippingRect.set(0, mHeaderBottomPosition, getWidth(), getHeight());
            canvas.save();
            canvas.clipRect(mClippingRect);
        }
        super.dispatchDraw(canvas);
        if (!mDrawingListUnderStickyHeader)
        {
            canvas.restore();
        }
        drawStickyHeader(canvas);
    }

    public boolean getAreHeadersSticky()
    {
        return mAreHeadersSticky;
    }

    public StickyListHeadersAdapter getWrappedAdapter()
    {
        if (mAdapter == null)
        {
            return null;
        } else
        {
            return mAdapter.mDelegate;
        }
    }

    public View getWrappedView(int i)
    {
        View view = getChildAt(i);
        if (view instanceof WrapperView)
        {
            view = ((WrapperView)view).mItem;
        }
        return view;
    }

    public boolean isDrawingListUnderStickyHeader()
    {
        return mDrawingListUnderStickyHeader;
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        super.onLayout(flag, i, j, k, l);
        if (flag)
        {
            reset();
            scrollChanged(getFirstVisiblePosition());
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        int i = motionevent.getAction();
        if (i != 0 || motionevent.getY() > (float)mHeaderBottomPosition) goto _L2; else goto _L1
_L1:
        mHeaderDownY = motionevent.getY();
        mHeaderBeingPressed = true;
        mHeader.setPressed(true);
        mHeader.invalidate();
        invalidate(0, 0, getWidth(), mHeaderBottomPosition);
_L4:
        return true;
_L2:
        if (!mHeaderBeingPressed)
        {
            break MISSING_BLOCK_LABEL_225;
        }
        if (Math.abs(motionevent.getY() - mHeaderDownY) >= (float)mViewConfig.getScaledTouchSlop())
        {
            break; /* Loop/switch isn't completed */
        }
        if (i == 1 || i == 3)
        {
            mHeaderDownY = -1F;
            mHeaderBeingPressed = false;
            mHeader.setPressed(false);
            mHeader.invalidate();
            invalidate(0, 0, getWidth(), mHeaderBottomPosition);
            if (mOnHeaderClickListener != null)
            {
                mOnHeaderClickListener.onHeaderClick(this, mHeader, mHeaderPosition.intValue(), mCurrentHeaderId.longValue(), true);
                return true;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
        mHeaderDownY = -1F;
        mHeaderBeingPressed = false;
        mHeader.setPressed(false);
        mHeader.invalidate();
        invalidate(0, 0, getWidth(), mHeaderBottomPosition);
        return super.onTouchEvent(motionevent);
    }

    public boolean performItemClick(View view, int i, long l)
    {
        if (view instanceof WrapperView)
        {
            view = ((WrapperView)view).mItem;
        }
        return super.performItemClick(view, i, l);
    }

    public boolean removeFooterView(View view)
    {
        if (super.removeFooterView(view))
        {
            mFooterViews.remove(view);
            return true;
        } else
        {
            return false;
        }
    }

    public volatile void setAdapter(Adapter adapter)
    {
        setAdapter((ListAdapter)adapter);
    }

    public void setAdapter(ListAdapter listadapter)
    {
        if (isInEditMode())
        {
            super.setAdapter(listadapter);
            return;
        }
        if (listadapter == null)
        {
            mAdapter = null;
            reset();
            super.setAdapter(null);
            return;
        }
        if (!(listadapter instanceof StickyListHeadersAdapter))
        {
            throw new IllegalArgumentException("Adapter must implement StickyListHeadersAdapter");
        } else
        {
            mAdapter = wrapAdapter(listadapter);
            reset();
            super.setAdapter(mAdapter);
            return;
        }
    }

    public void setAreHeadersSticky(boolean flag)
    {
        if (mAreHeadersSticky != flag)
        {
            mAreHeadersSticky = flag;
            requestLayout();
        }
    }

    public void setClipToPadding(boolean flag)
    {
        super.setClipToPadding(flag);
        mClippingToPadding = Boolean.valueOf(flag);
    }

    public void setDivider(Drawable drawable)
    {
        mDivider = drawable;
        if (drawable != null)
        {
            int i = drawable.getIntrinsicHeight();
            if (i >= 0)
            {
                setDividerHeight(i);
            }
        }
        if (mAdapter != null)
        {
            mAdapter.setDivider(drawable);
            requestLayout();
            invalidate();
        }
    }

    public void setDividerHeight(int i)
    {
        mDividerHeight = i;
        if (mAdapter != null)
        {
            mAdapter.setDividerHeight(i);
            requestLayout();
            invalidate();
        }
    }

    public void setDrawingListUnderStickyHeader(boolean flag)
    {
        mDrawingListUnderStickyHeader = flag;
    }

    public void setOnHeaderClickListener(OnHeaderClickListener onheaderclicklistener)
    {
        mOnHeaderClickListener = onheaderclicklistener;
    }

    public void setOnScrollListener(android.widget.AbsListView.OnScrollListener onscrolllistener)
    {
        mOnScrollListenerDelegate = onscrolllistener;
    }

    public void setSelectionFromTop(int i, int j)
    {
        if (hasStickyHeaderAtPosition(i))
        {
            j += getHeaderHeight();
        }
        super.setSelectionFromTop(i, j);
    }

    public void smoothScrollToPositionFromTop(int i, int j)
    {
        if (hasStickyHeaderAtPosition(i))
        {
            j += getHeaderHeight();
        }
        super.smoothScrollToPositionFromTop(i, j);
    }

    public void smoothScrollToPositionFromTop(int i, int j, int k)
    {
        if (hasStickyHeaderAtPosition(i))
        {
            j += getHeaderHeight();
        }
        super.smoothScrollToPositionFromTop(i, j, k);
    }




}
