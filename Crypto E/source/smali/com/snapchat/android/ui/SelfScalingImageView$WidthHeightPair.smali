.class public Lcom/snapchat/android/ui/SelfScalingImageView$WidthHeightPair;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/SelfScalingImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WidthHeightPair"
.end annotation


# instance fields
.field final a:I

.field final b:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput p1, p0, Lcom/snapchat/android/ui/SelfScalingImageView$WidthHeightPair;->a:I

    .line 241
    iput p2, p0, Lcom/snapchat/android/ui/SelfScalingImageView$WidthHeightPair;->b:I

    .line 242
    return-void
.end method
