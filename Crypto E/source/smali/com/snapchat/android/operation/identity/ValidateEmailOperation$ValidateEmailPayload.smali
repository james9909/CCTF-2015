.class public Lcom/snapchat/android/operation/identity/ValidateEmailOperation$ValidateEmailPayload;
.super Lcom/snapchat/android/api2/AuthPayload;
.source "SourceFile"


# annotations
.annotation runtime Lcom/snapchat/android/api2/framework/FormEncodedBody;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/operation/identity/ValidateEmailOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ValidateEmailPayload"
.end annotation


# instance fields
.field a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "email"
    .end annotation
.end field

.field final synthetic b:Lcom/snapchat/android/operation/identity/ValidateEmailOperation;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/operation/identity/ValidateEmailOperation;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/snapchat/android/operation/identity/ValidateEmailOperation$ValidateEmailPayload;->b:Lcom/snapchat/android/operation/identity/ValidateEmailOperation;

    invoke-direct {p0}, Lcom/snapchat/android/api2/AuthPayload;-><init>()V

    .line 37
    iget-object v0, p0, Lcom/snapchat/android/operation/identity/ValidateEmailOperation$ValidateEmailPayload;->b:Lcom/snapchat/android/operation/identity/ValidateEmailOperation;

    invoke-static {v0}, Lcom/snapchat/android/operation/identity/ValidateEmailOperation;->a(Lcom/snapchat/android/operation/identity/ValidateEmailOperation;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/operation/identity/ValidateEmailOperation$ValidateEmailPayload;->a:Ljava/lang/String;

    return-void
.end method
