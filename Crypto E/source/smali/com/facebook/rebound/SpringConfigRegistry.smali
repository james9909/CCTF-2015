.class public Lcom/facebook/rebound/SpringConfigRegistry;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/facebook/rebound/SpringConfigRegistry;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/rebound/SpringConfig;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Z)V
    .locals 2
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/SpringConfigRegistry;->b:Ljava/util/Map;

    .line 38
    if-eqz p1, :cond_0

    .line 39
    sget-object v0, Lcom/facebook/rebound/SpringConfig;->c:Lcom/facebook/rebound/SpringConfig;

    const-string v1, "default config"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rebound/SpringConfigRegistry;->a(Lcom/facebook/rebound/SpringConfig;Ljava/lang/String;)Z

    .line 41
    :cond_0
    return-void
.end method

.method public static a()Lcom/facebook/rebound/SpringConfigRegistry;
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/facebook/rebound/SpringConfigRegistry;->a:Lcom/facebook/rebound/SpringConfigRegistry;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/facebook/rebound/SpringConfigRegistry;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/facebook/rebound/SpringConfigRegistry;-><init>(Z)V

    sput-object v0, Lcom/facebook/rebound/SpringConfigRegistry;->a:Lcom/facebook/rebound/SpringConfigRegistry;

    .line 28
    :cond_0
    sget-object v0, Lcom/facebook/rebound/SpringConfigRegistry;->a:Lcom/facebook/rebound/SpringConfigRegistry;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/rebound/SpringConfig;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 52
    if-nez p1, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "springConfig is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    if-nez p2, :cond_1

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configName is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/facebook/rebound/SpringConfigRegistry;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    const/4 v0, 0x0

    .line 62
    :goto_0
    return v0

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/facebook/rebound/SpringConfigRegistry;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/rebound/SpringConfig;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/rebound/SpringConfigRegistry;->b:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
