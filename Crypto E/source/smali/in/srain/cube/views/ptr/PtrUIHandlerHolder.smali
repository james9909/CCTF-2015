.class Lin/srain/cube/views/ptr/PtrUIHandlerHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lin/srain/cube/views/ptr/PtrUIHandler;


# instance fields
.field private a:Lin/srain/cube/views/ptr/PtrUIHandler;

.field private b:Lin/srain/cube/views/ptr/PtrUIHandlerHolder;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static a(Lin/srain/cube/views/ptr/PtrUIHandlerHolder;Lin/srain/cube/views/ptr/PtrUIHandler;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 33
    if-nez p1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    if-eqz p0, :cond_0

    .line 39
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrUIHandlerHolder;->a:Lin/srain/cube/views/ptr/PtrUIHandler;

    if-nez v0, :cond_3

    .line 40
    iput-object p1, p0, Lin/srain/cube/views/ptr/PtrUIHandlerHolder;->a:Lin/srain/cube/views/ptr/PtrUIHandler;

    goto :goto_0

    .line 45
    :cond_2
    iget-object p0, p0, Lin/srain/cube/views/ptr/PtrUIHandlerHolder;->b:Lin/srain/cube/views/ptr/PtrUIHandlerHolder;

    .line 48
    :cond_3
    invoke-direct {p0, p1}, Lin/srain/cube/views/ptr/PtrUIHandlerHolder;->a(Lin/srain/cube/views/ptr/PtrUIHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrUIHandlerHolder;->b:Lin/srain/cube/views/ptr/PtrUIHandlerHolder;

    if-nez v0, :cond_2

    .line 56
    new-instance v0, Lin/srain/cube/views/ptr/PtrUIHandlerHolder;

    invoke-direct {v0}, Lin/srain/cube/views/ptr/PtrUIHandlerHolder;-><init>()V

    .line 57
    iput-object p1, v0, Lin/srain/cube/views/ptr/PtrUIHandlerHolder;->a:Lin/srain/cube/views/ptr/PtrUIHandler;

    .line 58
    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrUIHandlerHolder;->b:Lin/srain/cube/views/ptr/PtrUIHandlerHolder;

    goto :goto_0
.end method

.method private a(Lin/srain/cube/views/ptr/PtrUIHandler;)Z
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrUIHandlerHolder;->a:Lin/srain/cube/views/ptr/PtrUIHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrUIHandlerHolder;->a:Lin/srain/cube/views/ptr/PtrUIHandler;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Lin/srain/cube/views/ptr/PtrUIHandlerHolder;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lin/srain/cube/views/ptr/PtrUIHandlerHolder;

    invoke-direct {v0}, Lin/srain/cube/views/ptr/PtrUIHandlerHolder;-><init>()V

    return-object v0
.end method

.method private c()Lin/srain/cube/views/ptr/PtrUIHandler;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrUIHandlerHolder;->a:Lin/srain/cube/views/ptr/PtrUIHandler;

    return-object v0
.end method


# virtual methods
.method public a(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 1
    .parameter

    .prologue
    .line 106
    .line 108
    :cond_0
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrUIHandlerHolder;->c()Lin/srain/cube/views/ptr/PtrUIHandler;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_1

    .line 110
    invoke-interface {v0, p1}, Lin/srain/cube/views/ptr/PtrUIHandler;->a(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    .line 112
    :cond_1
    iget-object p0, p0, Lin/srain/cube/views/ptr/PtrUIHandlerHolder;->b:Lin/srain/cube/views/ptr/PtrUIHandlerHolder;

    if-nez p0, :cond_0

    .line 113
    return-void
.end method

.method public a(Lin/srain/cube/views/ptr/PtrFrameLayout;ZBIIFF)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 150
    .line 152
    :cond_0
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrUIHandlerHolder;->c()Lin/srain/cube/views/ptr/PtrUIHandler;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_1

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    .line 154
    invoke-interface/range {v0 .. v7}, Lin/srain/cube/views/ptr/PtrUIHandler;->a(Lin/srain/cube/views/ptr/PtrFrameLayout;ZBIIFF)V

    .line 156
    :cond_1
    iget-object p0, p0, Lin/srain/cube/views/ptr/PtrUIHandlerHolder;->b:Lin/srain/cube/views/ptr/PtrUIHandlerHolder;

    if-nez p0, :cond_0

    .line 157
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrUIHandlerHolder;->a:Lin/srain/cube/views/ptr/PtrUIHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 1
    .parameter

    .prologue
    .line 117
    .line 119
    :cond_0
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrUIHandlerHolder;->c()Lin/srain/cube/views/ptr/PtrUIHandler;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_1

    .line 121
    invoke-interface {v0, p1}, Lin/srain/cube/views/ptr/PtrUIHandler;->b(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    .line 123
    :cond_1
    iget-object p0, p0, Lin/srain/cube/views/ptr/PtrUIHandlerHolder;->b:Lin/srain/cube/views/ptr/PtrUIHandlerHolder;

    if-nez p0, :cond_0

    .line 124
    return-void
.end method

.method public c(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 1
    .parameter

    .prologue
    .line 128
    .line 130
    :cond_0
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrUIHandlerHolder;->c()Lin/srain/cube/views/ptr/PtrUIHandler;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_1

    .line 132
    invoke-interface {v0, p1}, Lin/srain/cube/views/ptr/PtrUIHandler;->c(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    .line 134
    :cond_1
    iget-object p0, p0, Lin/srain/cube/views/ptr/PtrUIHandlerHolder;->b:Lin/srain/cube/views/ptr/PtrUIHandlerHolder;

    if-nez p0, :cond_0

    .line 135
    return-void
.end method

.method public d(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 1
    .parameter

    .prologue
    .line 139
    .line 141
    :cond_0
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrUIHandlerHolder;->c()Lin/srain/cube/views/ptr/PtrUIHandler;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_1

    .line 143
    invoke-interface {v0, p1}, Lin/srain/cube/views/ptr/PtrUIHandler;->d(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    .line 145
    :cond_1
    iget-object p0, p0, Lin/srain/cube/views/ptr/PtrUIHandlerHolder;->b:Lin/srain/cube/views/ptr/PtrUIHandlerHolder;

    if-nez p0, :cond_0

    .line 146
    return-void
.end method
