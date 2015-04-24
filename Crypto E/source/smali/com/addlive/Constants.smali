.class public Lcom/addlive/Constants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/addlive/Constants$MediaStatsDirection;,
        Lcom/addlive/Constants$MediaIssue;,
        Lcom/addlive/Constants$NetworkTest;,
        Lcom/addlive/Constants$AECModes;,
        Lcom/addlive/Constants$NSModes;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "AddLive_SDK"

.field public static final MAX_SIZE_MESSAGE:I = 0x1400

.field private static final compileTimeProps:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 175
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lcom/addlive/Constants;->compileTimeProps:Ljava/util/Properties;

    .line 185
    :try_start_0
    const-class v0, Lcom/addlive/Constants;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "consts.properties"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 187
    sget-object v1, Lcom/addlive/Constants;->compileTimeProps:Ljava/util/Properties;

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 188
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    const-string v1, "AddLive_SDK"

    const-string v2, "Failed to read the compile time properties"

    invoke-static {v1, v2, v0}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    return-void
.end method

.method public static SDK_VERSION()Ljava/lang/String;
    .locals 2

    .prologue
    .line 178
    sget-object v0, Lcom/addlive/Constants;->compileTimeProps:Ljava/util/Properties;

    const-string v1, "nativeSdk.version"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
