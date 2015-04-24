.class public Lorg/aspectj/lang/SoftException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# static fields
.field private static final b:Z


# instance fields
.field a:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 38
    :try_start_0
    const-string v1, "java.nio.Buffer"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    const/4 v0, 0x1

    .line 43
    :goto_0
    sput-boolean v0, Lorg/aspectj/lang/SoftException;->b:Z

    .line 44
    return-void

    .line 40
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/aspectj/lang/SoftException;->a:Ljava/lang/Throwable;

    return-object v0
.end method

.method public printStackTrace()V
    .locals 1

    .prologue
    .line 60
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lorg/aspectj/lang/SoftException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 61
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 2
    .parameter

    .prologue
    .line 64
    invoke-super {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 65
    iget-object v0, p0, Lorg/aspectj/lang/SoftException;->a:Ljava/lang/Throwable;

    .line 66
    sget-boolean v1, Lorg/aspectj/lang/SoftException;->b:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 67
    const-string v1, "Caused by: "

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 70
    :cond_0
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 2
    .parameter

    .prologue
    .line 73
    invoke-super {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 74
    iget-object v0, p0, Lorg/aspectj/lang/SoftException;->a:Ljava/lang/Throwable;

    .line 75
    sget-boolean v1, Lorg/aspectj/lang/SoftException;->b:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 76
    const-string v1, "Caused by: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 79
    :cond_0
    return-void
.end method
