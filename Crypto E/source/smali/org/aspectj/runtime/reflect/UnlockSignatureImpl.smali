.class Lorg/aspectj/runtime/reflect/UnlockSignatureImpl;
.super Lorg/aspectj/runtime/reflect/SignatureImpl;
.source "SourceFile"

# interfaces
.implements Lorg/aspectj/lang/reflect/UnlockSignature;


# instance fields
.field private a:Ljava/lang/Class;


# virtual methods
.method protected a(Lorg/aspectj/runtime/reflect/StringMaker;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/UnlockSignatureImpl;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->c(I)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/aspectj/runtime/reflect/UnlockSignatureImpl;->a:Ljava/lang/Class;

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "unlock("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/aspectj/runtime/reflect/UnlockSignatureImpl;->a:Ljava/lang/Class;

    invoke-virtual {p1, v1}, Lorg/aspectj/runtime/reflect/StringMaker;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
