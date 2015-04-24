// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.graphics.Rect;
import android.transition.Transition;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

class FragmentTransitionCompat21
{
    public static class EpicenterView
    {

        public View epicenter;

        public EpicenterView()
        {
        }
    }

    public static interface ViewRetriever
    {

        public abstract View getView();
    }


    FragmentTransitionCompat21()
    {
    }

    public static void addTargets(Object obj, ArrayList arraylist)
    {
        Transition transition = (Transition)obj;
        int i = arraylist.size();
        for (int j = 0; j < i; j++)
        {
            transition.addTarget((View)arraylist.get(j));
        }

    }

    public static void addTransitionTargets(Object obj, Object obj1, View view, ViewRetriever viewretriever, View view1, EpicenterView epicenterview, Map map, ArrayList arraylist, 
            Map map1, ArrayList arraylist1)
    {
        if (obj != null || obj1 != null)
        {
            Transition transition = (Transition)obj;
            if (transition != null)
            {
                transition.addTarget(view1);
            }
            if (obj1 != null)
            {
                addTargets((Transition)obj1, arraylist1);
            }
            if (viewretriever != null)
            {
                view.getViewTreeObserver().addOnPreDrawListener(new android.view.ViewTreeObserver.OnPreDrawListener(view, viewretriever, map, map1, transition, arraylist) {

                    final View val$container;
                    final Transition val$enterTransition;
                    final ArrayList val$enteringViews;
                    final ViewRetriever val$inFragment;
                    final Map val$nameOverrides;
                    final Map val$renamedViews;

                    public boolean onPreDraw()
                    {
                        container.getViewTreeObserver().removeOnPreDrawListener(this);
                        View view2 = inFragment.getView();
                        if (view2 != null)
                        {
                            if (!nameOverrides.isEmpty())
                            {
                                FragmentTransitionCompat21.findNamedViews(renamedViews, view2);
                                renamedViews.keySet().retainAll(nameOverrides.values());
                                Iterator iterator = nameOverrides.entrySet().iterator();
                                do
                                {
                                    if (!iterator.hasNext())
                                    {
                                        break;
                                    }
                                    java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                                    String s = (String)entry.getValue();
                                    View view3 = (View)renamedViews.get(s);
                                    if (view3 != null)
                                    {
                                        view3.setTransitionName((String)entry.getKey());
                                    }
                                } while (true);
                            }
                            if (enterTransition != null)
                            {
                                FragmentTransitionCompat21.captureTransitioningViews(enteringViews, view2);
                                enteringViews.removeAll(renamedViews.values());
                                FragmentTransitionCompat21.addTargets(enterTransition, enteringViews);
                            }
                        }
                        return true;
                    }

            
            {
                container = view;
                inFragment = viewretriever;
                nameOverrides = map;
                renamedViews = map1;
                enterTransition = transition;
                enteringViews = arraylist;
                super();
            }
                });
            }
            setSharedElementEpicenter(transition, epicenterview);
        }
    }

    public static void beginDelayedTransition(ViewGroup viewgroup, Object obj)
    {
        TransitionManager.beginDelayedTransition(viewgroup, (Transition)obj);
    }

    public static Object captureExitingViews(Object obj, View view, ArrayList arraylist, Map map)
    {
label0:
        {
            if (obj != null)
            {
                captureTransitioningViews(arraylist, view);
                if (map != null)
                {
                    arraylist.removeAll(map.values());
                }
                if (!arraylist.isEmpty())
                {
                    break label0;
                }
                obj = null;
            }
            return obj;
        }
        addTargets((Transition)obj, arraylist);
        return obj;
    }

    private static void captureTransitioningViews(ArrayList arraylist, View view)
    {
label0:
        {
            if (view.getVisibility() == 0)
            {
                if (!(view instanceof ViewGroup))
                {
                    break label0;
                }
                ViewGroup viewgroup = (ViewGroup)view;
                if (viewgroup.isTransitionGroup())
                {
                    arraylist.add(viewgroup);
                } else
                {
                    int i = viewgroup.getChildCount();
                    int j = 0;
                    while (j < i) 
                    {
                        captureTransitioningViews(arraylist, viewgroup.getChildAt(j));
                        j++;
                    }
                }
            }
            return;
        }
        arraylist.add(view);
    }

    public static void cleanupTransitions(View view, View view1, Object obj, ArrayList arraylist, Object obj1, ArrayList arraylist1, Object obj2, ArrayList arraylist2, 
            Object obj3, ArrayList arraylist3, Map map)
    {
        Transition transition = (Transition)obj;
        Transition transition1 = (Transition)obj1;
        Transition transition2 = (Transition)obj2;
        Transition transition3 = (Transition)obj3;
        if (transition3 != null)
        {
            view.getViewTreeObserver().addOnPreDrawListener(new android.view.ViewTreeObserver.OnPreDrawListener(view, transition, view1, arraylist, transition1, arraylist1, transition2, arraylist2, map, arraylist3, transition3) {

                final Transition val$enterTransition;
                final ArrayList val$enteringViews;
                final Transition val$exitTransition;
                final ArrayList val$exitingViews;
                final ArrayList val$hiddenViews;
                final View val$nonExistentView;
                final Transition val$overallTransition;
                final Map val$renamedViews;
                final View val$sceneRoot;
                final ArrayList val$sharedElementTargets;
                final Transition val$sharedElementTransition;

                public boolean onPreDraw()
                {
                    sceneRoot.getViewTreeObserver().removeOnPreDrawListener(this);
                    if (enterTransition != null)
                    {
                        enterTransition.removeTarget(nonExistentView);
                        FragmentTransitionCompat21.removeTargets(enterTransition, enteringViews);
                    }
                    if (exitTransition != null)
                    {
                        FragmentTransitionCompat21.removeTargets(exitTransition, exitingViews);
                    }
                    if (sharedElementTransition != null)
                    {
                        FragmentTransitionCompat21.removeTargets(sharedElementTransition, sharedElementTargets);
                    }
                    java.util.Map.Entry entry;
                    for (Iterator iterator = renamedViews.entrySet().iterator(); iterator.hasNext(); ((View)entry.getValue()).setTransitionName((String)entry.getKey()))
                    {
                        entry = (java.util.Map.Entry)iterator.next();
                    }

                    int i = hiddenViews.size();
                    for (int j = 0; j < i; j++)
                    {
                        overallTransition.excludeTarget((View)hiddenViews.get(j), false);
                    }

                    overallTransition.excludeTarget(nonExistentView, false);
                    return true;
                }

            
            {
                sceneRoot = view;
                enterTransition = transition;
                nonExistentView = view1;
                enteringViews = arraylist;
                exitTransition = transition1;
                exitingViews = arraylist1;
                sharedElementTransition = transition2;
                sharedElementTargets = arraylist2;
                renamedViews = map;
                hiddenViews = arraylist3;
                overallTransition = transition3;
                super();
            }
            });
        }
    }

    public static Object cloneTransition(Object obj)
    {
        if (obj != null)
        {
            obj = ((Transition)obj).clone();
        }
        return obj;
    }

    public static void excludeTarget(Object obj, View view, boolean flag)
    {
        ((Transition)obj).excludeTarget(view, flag);
    }

    public static void findNamedViews(Map map, View view)
    {
        if (view.getVisibility() == 0)
        {
            String s = view.getTransitionName();
            if (s != null)
            {
                map.put(s, view);
            }
            if (view instanceof ViewGroup)
            {
                ViewGroup viewgroup = (ViewGroup)view;
                int i = viewgroup.getChildCount();
                for (int j = 0; j < i; j++)
                {
                    findNamedViews(map, viewgroup.getChildAt(j));
                }

            }
        }
    }

    private static Rect getBoundsOnScreen(View view)
    {
        Rect rect = new Rect();
        int ai[] = new int[2];
        view.getLocationOnScreen(ai);
        rect.set(ai[0], ai[1], ai[0] + view.getWidth(), ai[1] + view.getHeight());
        return rect;
    }

    public static String getTransitionName(View view)
    {
        return view.getTransitionName();
    }

    public static Object mergeTransitions(Object obj, Object obj1, Object obj2, boolean flag)
    {
        Transition transition = (Transition)obj;
        Transition transition1 = (Transition)obj1;
        Transition transition2 = (Transition)obj2;
        Object obj3;
        if (transition == null || transition1 == null)
        {
            flag = true;
        }
        if (flag)
        {
            TransitionSet transitionset = new TransitionSet();
            if (transition != null)
            {
                transitionset.addTransition(transition);
            }
            if (transition1 != null)
            {
                transitionset.addTransition(transition1);
            }
            if (transition2 != null)
            {
                transitionset.addTransition(transition2);
            }
            return transitionset;
        }
        if (transition1 != null && transition != null)
        {
            obj3 = (new TransitionSet()).addTransition(transition1).addTransition(transition).setOrdering(1);
        } else
        if (transition1 != null)
        {
            obj3 = transition1;
        } else
        {
            obj3 = null;
            if (transition != null)
            {
                obj3 = transition;
            }
        }
        if (transition2 != null)
        {
            TransitionSet transitionset1 = new TransitionSet();
            if (obj3 != null)
            {
                transitionset1.addTransition(((Transition) (obj3)));
            }
            transitionset1.addTransition(transition2);
            return transitionset1;
        } else
        {
            return obj3;
        }
    }

    public static void removeTargets(Object obj, ArrayList arraylist)
    {
        Transition transition = (Transition)obj;
        int i = arraylist.size();
        for (int j = 0; j < i; j++)
        {
            transition.removeTarget((View)arraylist.get(j));
        }

    }

    public static void setEpicenter(Object obj, View view)
    {
        ((Transition)obj).setEpicenterCallback(new android.transition.Transition.EpicenterCallback(getBoundsOnScreen(view)) {

            final Rect val$epicenter;

            public Rect onGetEpicenter(Transition transition)
            {
                return epicenter;
            }

            
            {
                epicenter = rect;
                super();
            }
        });
    }

    private static void setSharedElementEpicenter(Transition transition, EpicenterView epicenterview)
    {
        if (transition != null)
        {
            transition.setEpicenterCallback(new android.transition.Transition.EpicenterCallback(epicenterview) {

                private Rect mEpicenter;
                final EpicenterView val$epicenterView;

                public Rect onGetEpicenter(Transition transition1)
                {
                    if (mEpicenter == null && epicenterView.epicenter != null)
                    {
                        mEpicenter = FragmentTransitionCompat21.getBoundsOnScreen(epicenterView.epicenter);
                    }
                    return mEpicenter;
                }

            
            {
                epicenterView = epicenterview;
                super();
            }
            });
        }
    }


}
