.class Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter$EditionItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EditionItem"
.end annotation


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Ljava/lang/String;

.field public c:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter$EditionItem;->a:Landroid/view/View;

    .line 286
    iput-object p2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter$EditionItem;->b:Ljava/lang/String;

    .line 287
    iput-boolean p3, p0, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter$EditionItem;->c:Z

    .line 288
    return-void
.end method
