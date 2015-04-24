.class Lcom/snapchat/android/fragments/chat/ChatFragment$BottomScrollingGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/chat/ChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BottomScrollingGestureDetector"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/chat/ChatFragment;


# direct methods
.method private constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2910
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$BottomScrollingGestureDetector;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/fragments/chat/ChatFragment$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2910
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/chat/ChatFragment$BottomScrollingGestureDetector;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2914
    const/4 v0, 0x0

    return v0
.end method
