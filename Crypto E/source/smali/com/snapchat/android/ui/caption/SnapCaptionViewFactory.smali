.class public Lcom/snapchat/android/ui/caption/SnapCaptionViewFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/caption/SnapCaptionViewFactory$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static a(Lcom/snapchat/android/ui/caption/CaptionTypeEnums;Landroid/content/Context;)Lcom/snapchat/android/ui/caption/SnapCaptionView;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 12
    sget-object v0, Lcom/snapchat/android/ui/caption/SnapCaptionViewFactory$1;->a:[I

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "[%s] Caption Type is not valid"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :pswitch_0
    new-instance v0, Lcom/snapchat/android/ui/caption/VanillaCaptionView;

    invoke-direct {v0, p1}, Lcom/snapchat/android/ui/caption/VanillaCaptionView;-><init>(Landroid/content/Context;)V

    .line 18
    :goto_0
    return-object v0

    .line 16
    :pswitch_1
    new-instance v0, Lcom/snapchat/android/ui/caption/FatCaptionView;

    invoke-direct {v0, p1}, Lcom/snapchat/android/ui/caption/FatCaptionView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 18
    :pswitch_2
    new-instance v0, Lcom/snapchat/android/ui/caption/FatCenterCaptionView;

    invoke-direct {v0, p1}, Lcom/snapchat/android/ui/caption/FatCenterCaptionView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 12
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
