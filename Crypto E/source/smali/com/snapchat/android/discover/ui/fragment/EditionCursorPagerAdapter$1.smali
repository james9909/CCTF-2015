.class Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/discover/ui/DSnapView$OnAutoAdvanceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;->a(Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

.field final synthetic b:Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter$1;->b:Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;

    iput-object p2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter$1;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter$1;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->b()V

    .line 262
    return-void
.end method
