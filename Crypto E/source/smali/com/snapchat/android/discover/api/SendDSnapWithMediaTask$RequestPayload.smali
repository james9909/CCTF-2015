.class public Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask$RequestPayload;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/snapchat/android/api2/framework/MultipartEncodedBody;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestPayload"
.end annotation


# instance fields
.field a:Lcom/snapchat/android/api2/framework/StringHttpContent;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timestamp"
    .end annotation
.end field

.field b:Lcom/snapchat/android/api2/framework/StringHttpContent;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "req_token"
    .end annotation
.end field

.field c:Lcom/snapchat/android/api2/framework/StringHttpContent;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "username"
    .end annotation
.end field

.field d:Lcom/snapchat/android/api2/framework/StringHttpContent;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "media_id"
    .end annotation
.end field

.field e:Lcom/snapchat/android/api2/framework/StringHttpContent;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field f:Lcom/snapchat/android/api2/framework/ByteArrayHttpContent;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field

.field final synthetic g:Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask$RequestPayload;->g:Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Lcom/snapchat/android/api2/framework/StringHttpContent;

    invoke-direct {v0, p2}, Lcom/snapchat/android/api2/framework/StringHttpContent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask$RequestPayload;->a:Lcom/snapchat/android/api2/framework/StringHttpContent;

    .line 87
    new-instance v0, Lcom/snapchat/android/api2/framework/StringHttpContent;

    invoke-static {p2}, Lcom/snapchat/android/api/RequestAuthorization;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/api2/framework/StringHttpContent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask$RequestPayload;->b:Lcom/snapchat/android/api2/framework/StringHttpContent;

    .line 88
    new-instance v0, Lcom/snapchat/android/api2/framework/StringHttpContent;

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/api2/framework/StringHttpContent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask$RequestPayload;->c:Lcom/snapchat/android/api2/framework/StringHttpContent;

    .line 89
    new-instance v0, Lcom/snapchat/android/api2/framework/StringHttpContent;

    invoke-static {p1}, Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask;->a(Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask;)Lcom/snapchat/android/discover/model/DSnapbryo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/DSnapbryo;->N()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/api2/framework/StringHttpContent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask$RequestPayload;->d:Lcom/snapchat/android/api2/framework/StringHttpContent;

    .line 90
    new-instance v0, Lcom/snapchat/android/api2/framework/StringHttpContent;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/api2/framework/StringHttpContent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask$RequestPayload;->e:Lcom/snapchat/android/api2/framework/StringHttpContent;

    .line 91
    new-instance v0, Lcom/snapchat/android/api2/framework/ByteArrayHttpContent;

    new-instance v1, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    invoke-static {p1}, Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask;->a(Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask;)Lcom/snapchat/android/discover/model/DSnapbryo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapbryo;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask;->a(Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask;)Lcom/snapchat/android/discover/model/DSnapbryo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/DSnapbryo;->h()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask;->b(Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->a([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/api2/framework/ByteArrayHttpContent;-><init>([B)V

    iput-object v0, p0, Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask$RequestPayload;->f:Lcom/snapchat/android/api2/framework/ByteArrayHttpContent;

    .line 93
    return-void
.end method
