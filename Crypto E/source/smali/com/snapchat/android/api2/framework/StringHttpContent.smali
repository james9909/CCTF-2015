.class public Lcom/snapchat/android/api2/framework/StringHttpContent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/framework/HttpContent;


# instance fields
.field private mString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/snapchat/android/api2/framework/StringHttpContent;->mString:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/squareup/okhttp/Headers;
    .locals 4
    .parameter

    .prologue
    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Content-Disposition"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "form-data; name=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/squareup/okhttp/Headers;->a([Ljava/lang/String;)Lcom/squareup/okhttp/Headers;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/squareup/okhttp/RequestBody;
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/snapchat/android/api2/framework/EntityFactory;->STRING_MEDIA_TYPE:Lcom/squareup/okhttp/MediaType;

    iget-object v1, p0, Lcom/snapchat/android/api2/framework/StringHttpContent;->mString:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/RequestBody;->a(Lcom/squareup/okhttp/MediaType;Ljava/lang/String;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    return-object v0
.end method
