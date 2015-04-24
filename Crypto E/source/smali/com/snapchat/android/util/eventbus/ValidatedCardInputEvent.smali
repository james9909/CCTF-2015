.class public Lcom/snapchat/android/util/eventbus/ValidatedCardInputEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;)V
    .locals 0
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean p1, p0, Lcom/snapchat/android/util/eventbus/ValidatedCardInputEvent;->a:Z

    .line 15
    iput-object p2, p0, Lcom/snapchat/android/util/eventbus/ValidatedCardInputEvent;->b:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

    .line 16
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/snapchat/android/util/eventbus/ValidatedCardInputEvent;->b:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

    return-object v0
.end method
