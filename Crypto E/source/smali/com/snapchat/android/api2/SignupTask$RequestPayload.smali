.class public Lcom/snapchat/android/api2/SignupTask$RequestPayload;
.super Lcom/snapchat/android/api2/LoginTask$RequestPayload;
.source "SourceFile"


# annotations
.annotation runtime Lcom/snapchat/android/api2/framework/FormEncodedBody;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/api2/SignupTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestPayload"
.end annotation


# instance fields
.field mAge:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "age"
    .end annotation
.end field

.field mBirthday:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "birthday"
    .end annotation
.end field

.field mEmail:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "email"
    .end annotation
.end field

.field mPassword:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "password"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/snapchat/android/api2/LoginTask$RequestPayload;-><init>()V

    return-void
.end method
