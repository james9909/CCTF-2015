.class synthetic Lcom/addlive/impl/ADLNativeWrapperImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/addlive/impl/ADLNativeWrapperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$addlive$impl$ADLNativeWrapperImpl$MethodName:[I

.field static final synthetic $SwitchMap$com$addlive$service$MediaType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 558
    invoke-static {}, Lcom/addlive/service/MediaType;->values()[Lcom/addlive/service/MediaType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/addlive/impl/ADLNativeWrapperImpl$1;->$SwitchMap$com$addlive$service$MediaType:[I

    :try_start_0
    sget-object v0, Lcom/addlive/impl/ADLNativeWrapperImpl$1;->$SwitchMap$com$addlive$service$MediaType:[I

    sget-object v1, Lcom/addlive/service/MediaType;->AUDIO:Lcom/addlive/service/MediaType;

    invoke-virtual {v1}, Lcom/addlive/service/MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v0, Lcom/addlive/impl/ADLNativeWrapperImpl$1;->$SwitchMap$com$addlive$service$MediaType:[I

    sget-object v1, Lcom/addlive/service/MediaType;->VIDEO:Lcom/addlive/service/MediaType;

    invoke-virtual {v1}, Lcom/addlive/service/MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v0, Lcom/addlive/impl/ADLNativeWrapperImpl$1;->$SwitchMap$com$addlive$service$MediaType:[I

    sget-object v1, Lcom/addlive/service/MediaType;->SCREEN:Lcom/addlive/service/MediaType;

    invoke-virtual {v1}, Lcom/addlive/service/MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    .line 236
    :goto_2
    invoke-static {}, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;->values()[Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/addlive/impl/ADLNativeWrapperImpl$1;->$SwitchMap$com$addlive$impl$ADLNativeWrapperImpl$MethodName:[I

    :try_start_3
    sget-object v0, Lcom/addlive/impl/ADLNativeWrapperImpl$1;->$SwitchMap$com$addlive$impl$ADLNativeWrapperImpl$MethodName:[I

    sget-object v1, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;->DISCONNECT:Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

    invoke-virtual {v1}, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v0, Lcom/addlive/impl/ADLNativeWrapperImpl$1;->$SwitchMap$com$addlive$impl$ADLNativeWrapperImpl$MethodName:[I

    sget-object v1, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;->GET_VIDEO_CAPTURE_DEVICE_NAMES:Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

    invoke-virtual {v1}, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v0, Lcom/addlive/impl/ADLNativeWrapperImpl$1;->$SwitchMap$com$addlive$impl$ADLNativeWrapperImpl$MethodName:[I

    sget-object v1, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;->GET_VIDEO_CAPTURE_DEVICE:Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

    invoke-virtual {v1}, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v0, Lcom/addlive/impl/ADLNativeWrapperImpl$1;->$SwitchMap$com$addlive$impl$ADLNativeWrapperImpl$MethodName:[I

    sget-object v1, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;->SET_VIDEO_CAPTURE_DEVICE:Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

    invoke-virtual {v1}, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v0, Lcom/addlive/impl/ADLNativeWrapperImpl$1;->$SwitchMap$com$addlive$impl$ADLNativeWrapperImpl$MethodName:[I

    sget-object v1, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;->SET_PROPERTY:Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

    invoke-virtual {v1}, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v0, Lcom/addlive/impl/ADLNativeWrapperImpl$1;->$SwitchMap$com$addlive$impl$ADLNativeWrapperImpl$MethodName:[I

    sget-object v1, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;->STOP_LOCAL_VIDEO:Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

    invoke-virtual {v1}, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    return-void

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_3

    .line 558
    :catch_6
    move-exception v0

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_1

    :catch_8
    move-exception v0

    goto :goto_0
.end method
