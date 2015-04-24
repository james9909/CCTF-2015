.class public Lnet/sourceforge/jeval/ParsedFunction;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lnet/sourceforge/jeval/function/Function;

.field private final b:Ljava/lang/String;

.field private final c:Lnet/sourceforge/jeval/operator/Operator;


# direct methods
.method public constructor <init>(Lnet/sourceforge/jeval/function/Function;Ljava/lang/String;Lnet/sourceforge/jeval/operator/Operator;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lnet/sourceforge/jeval/ParsedFunction;->a:Lnet/sourceforge/jeval/function/Function;

    .line 51
    iput-object p2, p0, Lnet/sourceforge/jeval/ParsedFunction;->b:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lnet/sourceforge/jeval/ParsedFunction;->c:Lnet/sourceforge/jeval/operator/Operator;

    .line 53
    return-void
.end method


# virtual methods
.method public a()Lnet/sourceforge/jeval/function/Function;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lnet/sourceforge/jeval/ParsedFunction;->a:Lnet/sourceforge/jeval/function/Function;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lnet/sourceforge/jeval/ParsedFunction;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lnet/sourceforge/jeval/operator/Operator;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lnet/sourceforge/jeval/ParsedFunction;->c:Lnet/sourceforge/jeval/operator/Operator;

    return-object v0
.end method
