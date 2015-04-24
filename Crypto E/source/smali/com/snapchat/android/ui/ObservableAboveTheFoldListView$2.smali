.class Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->d()V
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
    .line 347
    iput-object p1, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$2;->a:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$2;->a:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    iget-object v1, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$2;->a:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->setSelection(I)V

    .line 351
    return-void
.end method
