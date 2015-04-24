.class Ldagger/internal/LazyBinding$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/Lazy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldagger/internal/LazyBinding;->a()Ldagger/Lazy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/Lazy",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldagger/internal/LazyBinding;

.field private volatile b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ldagger/internal/LazyBinding;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Ldagger/internal/LazyBinding$1;->a:Ldagger/internal/LazyBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Ldagger/internal/LazyBinding;->i()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ldagger/internal/LazyBinding$1;->b:Ljava/lang/Object;

    return-void
.end method
