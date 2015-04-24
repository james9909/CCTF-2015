.class Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$1;->a:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$1;->a:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
