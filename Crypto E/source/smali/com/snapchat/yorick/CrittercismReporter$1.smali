.class Lcom/snapchat/yorick/CrittercismReporter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/yorick/CrittercismReporter;->a(Lcom/snapchat/yorick/ParsedTrace;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/yorick/ParsedTrace;

.field final synthetic b:Lcom/snapchat/yorick/CrittercismReporter;


# direct methods
.method constructor <init>(Lcom/snapchat/yorick/CrittercismReporter;Lcom/snapchat/yorick/ParsedTrace;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    iput-object p1, p0, Lcom/snapchat/yorick/CrittercismReporter$1;->b:Lcom/snapchat/yorick/CrittercismReporter;

    iput-object p2, p0, Lcom/snapchat/yorick/CrittercismReporter$1;->a:Lcom/snapchat/yorick/ParsedTrace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/snapchat/yorick/CrittercismReporter$1;->a:Lcom/snapchat/yorick/ParsedTrace;

    iget-object v0, v0, Lcom/snapchat/yorick/ParsedTrace;->b:Ljava/lang/String;

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lcom/snapchat/yorick/AnrError$Builder;

    invoke-direct {v1, v0}, Lcom/snapchat/yorick/AnrError$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/snapchat/yorick/AnrError$Builder;->a()Lcom/snapchat/yorick/AnrError;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/Throwable;)V

    .line 25
    :goto_0
    return-void

    .line 23
    :cond_0
    const-string v0, "The parsed trace contains no stack traces."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/snapchat/yorick/Timber;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
