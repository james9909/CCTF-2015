.class public Lcom/snapchat/android/api2/framework/EntityFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api2/framework/EntityFactory$1;
    }
.end annotation


# static fields
.field public static final BYTE_STREAM_MEDIA_TYPE:Lcom/squareup/okhttp/MediaType; = null

.field public static final JSON_MEDIA_TYPE:Lcom/squareup/okhttp/MediaType; = null

.field private static final KEY_VALUE_SEPARATOR:Ljava/lang/String; = "="

.field private static final PARAMETER_SEPARATOR:Ljava/lang/String; = "&"

.field public static final STRING_MEDIA_TYPE:Lcom/squareup/okhttp/MediaType; = null

.field private static final TAG:Ljava/lang/String; = "EntityFactory"

.field public static final URL_ENCODED_FORM_MEDIA_TYPE:Lcom/squareup/okhttp/MediaType; = null

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"


# instance fields
.field private final mFormEncodedJsonFieldMapper:Lcom/snapchat/android/api2/framework/FormEncodedJsonFieldMapper;

.field private final mGson:Lcom/snapchat/android/util/GsonWrapper;

.field private final mMultipartEncodedFieldMapper:Lcom/snapchat/android/api2/framework/MultipartEncodedFieldMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "application/octet-stream"

    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->a(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/api2/framework/EntityFactory;->BYTE_STREAM_MEDIA_TYPE:Lcom/squareup/okhttp/MediaType;

    .line 32
    const-string v0, "application/json; charset=UTF-8"

    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->a(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/api2/framework/EntityFactory;->JSON_MEDIA_TYPE:Lcom/squareup/okhttp/MediaType;

    .line 33
    const-string v0, "text/plain; charset=UTF-8"

    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->a(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/api2/framework/EntityFactory;->STRING_MEDIA_TYPE:Lcom/squareup/okhttp/MediaType;

    .line 34
    const-string v0, "application/x-www-form-urlencoded; charset=UTF-8"

    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->a(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/api2/framework/EntityFactory;->URL_ENCODED_FORM_MEDIA_TYPE:Lcom/squareup/okhttp/MediaType;

    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/api2/framework/FormEncodedJsonFieldMapper;Lcom/snapchat/android/api2/framework/MultipartEncodedFieldMapper;Lcom/snapchat/android/util/GsonWrapper;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/snapchat/android/api2/framework/EntityFactory;->mFormEncodedJsonFieldMapper:Lcom/snapchat/android/api2/framework/FormEncodedJsonFieldMapper;

    .line 42
    iput-object p2, p0, Lcom/snapchat/android/api2/framework/EntityFactory;->mMultipartEncodedFieldMapper:Lcom/snapchat/android/api2/framework/MultipartEncodedFieldMapper;

    .line 43
    iput-object p3, p0, Lcom/snapchat/android/api2/framework/EntityFactory;->mGson:Lcom/snapchat/android/util/GsonWrapper;

    .line 44
    return-void
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 112
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 113
    const-string v1, "&"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :cond_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, "="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    const-string v0, "EntityFactory"

    const-string v1, "Error occurred while encoding map into UTF-8 string."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 118
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    .line 123
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/util/Map;)Lcom/squareup/okhttp/RequestBody;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/api2/framework/HttpContent;",
            ">;)",
            "Lcom/squareup/okhttp/RequestBody;"
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Lcom/squareup/okhttp/MultipartBuilder;

    invoke-direct {v0}, Lcom/squareup/okhttp/MultipartBuilder;-><init>()V

    sget-object v1, Lcom/squareup/okhttp/MultipartBuilder;->e:Lcom/squareup/okhttp/MediaType;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/MultipartBuilder;->a(Lcom/squareup/okhttp/MediaType;)Lcom/squareup/okhttp/MultipartBuilder;

    move-result-object v3

    .line 134
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 135
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/api2/framework/HttpContent;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/snapchat/android/api2/framework/HttpContent;->a(Ljava/lang/String;)Lcom/squareup/okhttp/Headers;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/api2/framework/HttpContent;

    invoke-interface {v0}, Lcom/snapchat/android/api2/framework/HttpContent;->a()Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/squareup/okhttp/MultipartBuilder;->a(Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/MultipartBuilder;

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {v3}, Lcom/squareup/okhttp/MultipartBuilder;->a()Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)Lcom/squareup/okhttp/RequestBody;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 91
    sget-object v0, Lcom/snapchat/android/api2/framework/EntityFactory;->BYTE_STREAM_MEDIA_TYPE:Lcom/squareup/okhttp/MediaType;

    check-cast p1, [B

    check-cast p1, [B

    invoke-static {v0, p1}, Lcom/squareup/okhttp/RequestBody;->a(Lcom/squareup/okhttp/MediaType;[B)Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Lcom/squareup/okhttp/RequestBody;
    .locals 2
    .parameter

    .prologue
    .line 83
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/snapchat/android/util/network/EndpointManager;->a()Lcom/snapchat/android/util/network/EndpointManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/util/network/EndpointManager;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/snapchat/android/api2/framework/EntityFactory;->JSON_MEDIA_TYPE:Lcom/squareup/okhttp/MediaType;

    const-string v1, "{}"

    invoke-static {v0, v1}, Lcom/squareup/okhttp/RequestBody;->a(Lcom/squareup/okhttp/MediaType;Ljava/lang/String;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/snapchat/android/api2/framework/EntityFactory;->URL_ENCODED_FORM_MEDIA_TYPE:Lcom/squareup/okhttp/MediaType;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/squareup/okhttp/RequestBody;->a(Lcom/squareup/okhttp/MediaType;Ljava/lang/String;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Lcom/squareup/okhttp/RequestBody;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 47
    if-nez p2, :cond_0

    .line 48
    invoke-virtual {p0, p1}, Lcom/snapchat/android/api2/framework/EntityFactory;->a(Ljava/lang/String;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    .line 51
    :cond_0
    invoke-static {p2}, Lcom/snapchat/android/api2/framework/RequestBodyType;->typeOf(Ljava/lang/Object;)Lcom/snapchat/android/api2/framework/RequestBodyType;

    move-result-object v0

    .line 54
    instance-of v1, p2, Lcom/snapchat/android/api2/framework/RequestBodyWrapper;

    if-eqz v1, :cond_1

    .line 55
    check-cast p2, Lcom/snapchat/android/api2/framework/RequestBodyWrapper;

    .line 56
    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/RequestBodyWrapper;->a()Ljava/lang/Object;

    move-result-object p2

    .line 60
    :cond_1
    sget-object v1, Lcom/snapchat/android/api2/framework/EntityFactory$1;->$SwitchMap$com$snapchat$android$api2$framework$RequestBodyType:[I

    invoke-virtual {v0}, Lcom/snapchat/android/api2/framework/RequestBodyType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No encoding annotation is set on the payload."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/snapchat/android/api2/framework/EntityFactory;->c(Ljava/lang/Object;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    goto :goto_0

    .line 65
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/snapchat/android/api2/framework/EntityFactory;->d(Ljava/lang/Object;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    goto :goto_0

    .line 68
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/snapchat/android/api2/framework/EntityFactory;->e(Ljava/lang/Object;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    goto :goto_0

    .line 71
    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/snapchat/android/api2/framework/EntityFactory;->a(Ljava/lang/Object;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    goto :goto_0

    .line 74
    :pswitch_4
    invoke-virtual {p0, p2}, Lcom/snapchat/android/api2/framework/EntityFactory;->b(Ljava/lang/Object;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected b(Ljava/lang/Object;)Lcom/squareup/okhttp/RequestBody;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 95
    sget-object v0, Lcom/snapchat/android/api2/framework/EntityFactory;->BYTE_STREAM_MEDIA_TYPE:Lcom/squareup/okhttp/MediaType;

    check-cast p1, Ljava/io/File;

    invoke-static {v0, p1}, Lcom/squareup/okhttp/RequestBody;->a(Lcom/squareup/okhttp/MediaType;Ljava/io/File;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    return-object v0
.end method

.method protected c(Ljava/lang/Object;)Lcom/squareup/okhttp/RequestBody;
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/snapchat/android/api2/framework/EntityFactory;->mGson:Lcom/snapchat/android/util/GsonWrapper;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/util/GsonWrapper;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 100
    sget-object v1, Lcom/snapchat/android/api2/framework/EntityFactory;->JSON_MEDIA_TYPE:Lcom/squareup/okhttp/MediaType;

    invoke-static {v1, v0}, Lcom/squareup/okhttp/RequestBody;->a(Lcom/squareup/okhttp/MediaType;Ljava/lang/String;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    return-object v0
.end method

.method protected d(Ljava/lang/Object;)Lcom/squareup/okhttp/RequestBody;
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/snapchat/android/api2/framework/EntityFactory;->mFormEncodedJsonFieldMapper:Lcom/snapchat/android/api2/framework/FormEncodedJsonFieldMapper;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/api2/framework/FormEncodedJsonFieldMapper;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 105
    invoke-static {v0}, Lcom/snapchat/android/api2/framework/EntityFactory;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 106
    sget-object v1, Lcom/snapchat/android/api2/framework/EntityFactory;->URL_ENCODED_FORM_MEDIA_TYPE:Lcom/squareup/okhttp/MediaType;

    invoke-static {v1, v0}, Lcom/squareup/okhttp/RequestBody;->a(Lcom/squareup/okhttp/MediaType;Ljava/lang/String;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    return-object v0
.end method

.method protected e(Ljava/lang/Object;)Lcom/squareup/okhttp/RequestBody;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/snapchat/android/api2/framework/EntityFactory;->mMultipartEncodedFieldMapper:Lcom/snapchat/android/api2/framework/MultipartEncodedFieldMapper;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/api2/framework/MultipartEncodedFieldMapper;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 128
    invoke-static {v0}, Lcom/snapchat/android/api2/framework/EntityFactory;->b(Ljava/util/Map;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    return-object v0
.end method
