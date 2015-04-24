.class public Lnet/sourceforge/jeval/function/string/StringFunctions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sourceforge/jeval/function/FunctionGroup;


# instance fields
.field private a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/jeval/function/string/StringFunctions;->a:Ljava/util/List;

    .line 43
    iget-object v0, p0, Lnet/sourceforge/jeval/function/string/StringFunctions;->a:Ljava/util/List;

    new-instance v1, Lnet/sourceforge/jeval/function/string/CharAt;

    invoke-direct {v1}, Lnet/sourceforge/jeval/function/string/CharAt;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lnet/sourceforge/jeval/function/string/StringFunctions;->a:Ljava/util/List;

    new-instance v1, Lnet/sourceforge/jeval/function/string/CompareTo;

    invoke-direct {v1}, Lnet/sourceforge/jeval/function/string/CompareTo;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lnet/sourceforge/jeval/function/string/StringFunctions;->a:Ljava/util/List;

    new-instance v1, Lnet/sourceforge/jeval/function/string/CompareToIgnoreCase;

    invoke-direct {v1}, Lnet/sourceforge/jeval/function/string/CompareToIgnoreCase;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, Lnet/sourceforge/jeval/function/string/StringFunctions;->a:Ljava/util/List;

    new-instance v1, Lnet/sourceforge/jeval/function/string/Concat;

    invoke-direct {v1}, Lnet/sourceforge/jeval/function/string/Concat;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lnet/sourceforge/jeval/function/string/StringFunctions;->a:Ljava/util/List;

    new-instance v1, Lnet/sourceforge/jeval/function/string/EndsWith;

    invoke-direct {v1}, Lnet/sourceforge/jeval/function/string/EndsWith;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p0, Lnet/sourceforge/jeval/function/string/StringFunctions;->a:Ljava/util/List;

    new-instance v1, Lnet/sourceforge/jeval/function/string/Equals;

    invoke-direct {v1}, Lnet/sourceforge/jeval/function/string/Equals;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p0, Lnet/sourceforge/jeval/function/string/StringFunctions;->a:Ljava/util/List;

    new-instance v1, Lnet/sourceforge/jeval/function/string/EqualsIgnoreCase;

    invoke-direct {v1}, Lnet/sourceforge/jeval/function/string/EqualsIgnoreCase;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lnet/sourceforge/jeval/function/string/StringFunctions;->a:Ljava/util/List;

    new-instance v1, Lnet/sourceforge/jeval/function/string/Eval;

    invoke-direct {v1}, Lnet/sourceforge/jeval/function/string/Eval;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lnet/sourceforge/jeval/function/string/StringFunctions;->a:Ljava/util/List;

    new-instance v1, Lnet/sourceforge/jeval/function/string/IndexOf;

    invoke-direct {v1}, Lnet/sourceforge/jeval/function/string/IndexOf;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lnet/sourceforge/jeval/function/string/StringFunctions;->a:Ljava/util/List;

    new-instance v1, Lnet/sourceforge/jeval/function/string/LastIndexOf;

    invoke-direct {v1}, Lnet/sourceforge/jeval/function/string/LastIndexOf;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lnet/sourceforge/jeval/function/string/StringFunctions;->a:Ljava/util/List;

    new-instance v1, Lnet/sourceforge/jeval/function/string/Length;

    invoke-direct {v1}, Lnet/sourceforge/jeval/function/string/Length;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lnet/sourceforge/jeval/function/string/StringFunctions;->a:Ljava/util/List;

    new-instance v1, Lnet/sourceforge/jeval/function/string/Replace;

    invoke-direct {v1}, Lnet/sourceforge/jeval/function/string/Replace;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lnet/sourceforge/jeval/function/string/StringFunctions;->a:Ljava/util/List;

    new-instance v1, Lnet/sourceforge/jeval/function/string/StartsWith;

    invoke-direct {v1}, Lnet/sourceforge/jeval/function/string/StartsWith;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lnet/sourceforge/jeval/function/string/StringFunctions;->a:Ljava/util/List;

    new-instance v1, Lnet/sourceforge/jeval/function/string/Substring;

    invoke-direct {v1}, Lnet/sourceforge/jeval/function/string/Substring;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lnet/sourceforge/jeval/function/string/StringFunctions;->a:Ljava/util/List;

    new-instance v1, Lnet/sourceforge/jeval/function/string/ToLowerCase;

    invoke-direct {v1}, Lnet/sourceforge/jeval/function/string/ToLowerCase;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lnet/sourceforge/jeval/function/string/StringFunctions;->a:Ljava/util/List;

    new-instance v1, Lnet/sourceforge/jeval/function/string/ToUpperCase;

    invoke-direct {v1}, Lnet/sourceforge/jeval/function/string/ToUpperCase;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lnet/sourceforge/jeval/function/string/StringFunctions;->a:Ljava/util/List;

    new-instance v1, Lnet/sourceforge/jeval/function/string/Trim;

    invoke-direct {v1}, Lnet/sourceforge/jeval/function/string/Trim;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method


# virtual methods
.method public a(Lnet/sourceforge/jeval/Evaluator;)V
    .locals 2
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lnet/sourceforge/jeval/function/string/StringFunctions;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 89
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sourceforge/jeval/function/Function;

    invoke-virtual {p1, v0}, Lnet/sourceforge/jeval/Evaluator;->a(Lnet/sourceforge/jeval/function/Function;)V

    goto :goto_0

    .line 92
    :cond_0
    return-void
.end method
