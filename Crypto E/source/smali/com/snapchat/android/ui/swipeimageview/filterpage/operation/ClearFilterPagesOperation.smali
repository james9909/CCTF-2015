.class public Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/ClearFilterPagesOperation;
.super Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperation;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperation;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/ui/SwipeImageView;Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/ui/SwipeImageView;",
            "Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore",
            "<",
            "Lcom/snapchat/android/ui/swipefilters/FilterPage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-virtual {p1}, Lcom/snapchat/android/ui/SwipeImageView;->e()V

    .line 16
    invoke-virtual {p2}, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;->c()V

    .line 17
    return-void
.end method
