.class Lcom/snapchat/yorick/HockeyAppReporter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/yorick/HockeyAppReporter;->a(Lcom/snapchat/yorick/ParsedTrace;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/yorick/ParsedTrace;

.field final synthetic b:Lcom/snapchat/yorick/HockeyAppReporter;


# direct methods
.method constructor <init>(Lcom/snapchat/yorick/HockeyAppReporter;Lcom/snapchat/yorick/ParsedTrace;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/snapchat/yorick/HockeyAppReporter$1;->b:Lcom/snapchat/yorick/HockeyAppReporter;

    iput-object p2, p0, Lcom/snapchat/yorick/HockeyAppReporter$1;->a:Lcom/snapchat/yorick/ParsedTrace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/snapchat/yorick/HockeyAppReporter$1;->b:Lcom/snapchat/yorick/HockeyAppReporter;

    iget-object v1, p0, Lcom/snapchat/yorick/HockeyAppReporter$1;->a:Lcom/snapchat/yorick/ParsedTrace;

    invoke-virtual {v0, v1}, Lcom/snapchat/yorick/HockeyAppReporter;->b(Lcom/snapchat/yorick/ParsedTrace;)V

    .line 75
    return-void
.end method
