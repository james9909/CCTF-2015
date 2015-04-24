.class public final Lcom/squareup/okhttp/internal/http/CacheStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;
    }
.end annotation


# instance fields
.field public final a:Lcom/squareup/okhttp/Request;

.field public final b:Lcom/squareup/okhttp/Response;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy;->a:Lcom/squareup/okhttp/Request;

    .line 36
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy;->b:Lcom/squareup/okhttp/Response;

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/internal/http/CacheStrategy$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/http/CacheStrategy;-><init>(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;)V

    return-void
.end method

.method public static a(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Request;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 46
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->c()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 73
    :cond_0
    :goto_0
    return v0

    .line 59
    :sswitch_0
    const-string v1, "Expires"

    invoke-virtual {p0, v1}, Lcom/squareup/okhttp/Response;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->l()Lcom/squareup/okhttp/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/CacheControl;->c()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->l()Lcom/squareup/okhttp/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/CacheControl;->d()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->l()Lcom/squareup/okhttp/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/CacheControl;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    :cond_1
    :sswitch_1
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->l()Lcom/squareup/okhttp/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/CacheControl;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->h()Lcom/squareup/okhttp/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/CacheControl;->b()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 46
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0xcb -> :sswitch_1
        0x12c -> :sswitch_1
        0x12d -> :sswitch_1
        0x12e -> :sswitch_0
        0x133 -> :sswitch_0
        0x134 -> :sswitch_1
        0x19a -> :sswitch_1
    .end sparse-switch
.end method
