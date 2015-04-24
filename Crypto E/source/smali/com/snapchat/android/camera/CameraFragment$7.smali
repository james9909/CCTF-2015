.class synthetic Lcom/snapchat/android/camera/CameraFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/camera/CameraFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 904
    invoke-static {}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->values()[Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/snapchat/android/camera/CameraFragment$7;->c:[I

    :try_start_0
    sget-object v0, Lcom/snapchat/android/camera/CameraFragment$7;->c:[I

    sget-object v1, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->a:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    .line 676
    :goto_0
    invoke-static {}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface$TakeSnapButtonAction;->values()[Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface$TakeSnapButtonAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/snapchat/android/camera/CameraFragment$7;->b:[I

    :try_start_1
    sget-object v0, Lcom/snapchat/android/camera/CameraFragment$7;->b:[I

    sget-object v1, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface$TakeSnapButtonAction;->a:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface$TakeSnapButtonAction;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface$TakeSnapButtonAction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v0, Lcom/snapchat/android/camera/CameraFragment$7;->b:[I

    sget-object v1, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface$TakeSnapButtonAction;->b:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface$TakeSnapButtonAction;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface$TakeSnapButtonAction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 605
    :goto_2
    invoke-static {}, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;->values()[Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/snapchat/android/camera/CameraFragment$7;->a:[I

    :try_start_3
    sget-object v0, Lcom/snapchat/android/camera/CameraFragment$7;->a:[I

    sget-object v1, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;->b:Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;

    invoke-virtual {v1}, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Lcom/snapchat/android/camera/CameraFragment$7;->a:[I

    sget-object v1, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;->a:Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;

    invoke-virtual {v1}, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    .line 676
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    .line 904
    :catch_4
    move-exception v0

    goto :goto_0
.end method
