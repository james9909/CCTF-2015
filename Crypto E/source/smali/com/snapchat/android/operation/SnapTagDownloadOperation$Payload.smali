.class public Lcom/snapchat/android/operation/SnapTagDownloadOperation$Payload;
.super Lcom/snapchat/android/api2/AuthPayload;
.source "SourceFile"


# annotations
.annotation runtime Lcom/snapchat/android/api2/framework/FormEncodedBody;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/operation/SnapTagDownloadOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Payload"
.end annotation


# instance fields
.field final a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image"
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/snapchat/android/api2/AuthPayload;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/snapchat/android/operation/SnapTagDownloadOperation$Payload;->a:Ljava/lang/String;

    .line 59
    return-void
.end method
