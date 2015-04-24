.class public Lcom/snapchat/android/ui/swipeimageview/LayerTypeFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Z)Lcom/snapchat/android/ui/layertype/LayerType;
    .locals 1
    .parameter

    .prologue
    .line 19
    if-eqz p0, :cond_0

    .line 20
    sget-object v0, Lcom/snapchat/android/ui/layertype/LayerType;->c:Lcom/snapchat/android/ui/layertype/LayerType;

    .line 22
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/snapchat/android/ui/layertype/LayerType;->b:Lcom/snapchat/android/ui/layertype/LayerType;

    goto :goto_0
.end method
