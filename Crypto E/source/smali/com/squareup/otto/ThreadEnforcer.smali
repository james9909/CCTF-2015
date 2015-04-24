.class public interface abstract Lcom/squareup/otto/ThreadEnforcer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/squareup/otto/ThreadEnforcer;

.field public static final b:Lcom/squareup/otto/ThreadEnforcer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/squareup/otto/ThreadEnforcer$1;

    invoke-direct {v0}, Lcom/squareup/otto/ThreadEnforcer$1;-><init>()V

    sput-object v0, Lcom/squareup/otto/ThreadEnforcer;->a:Lcom/squareup/otto/ThreadEnforcer;

    .line 44
    new-instance v0, Lcom/squareup/otto/ThreadEnforcer$2;

    invoke-direct {v0}, Lcom/squareup/otto/ThreadEnforcer$2;-><init>()V

    sput-object v0, Lcom/squareup/otto/ThreadEnforcer;->b:Lcom/squareup/otto/ThreadEnforcer;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/squareup/otto/Bus;)V
.end method
