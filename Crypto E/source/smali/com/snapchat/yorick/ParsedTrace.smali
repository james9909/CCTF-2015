.class public final Lcom/snapchat/yorick/ParsedTrace;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(JLjava/lang/String;)V
    .locals 1
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Lcom/snapchat/yorick/ParsedTrace;->a:J

    .line 14
    iput-object p3, p0, Lcom/snapchat/yorick/ParsedTrace;->b:Ljava/lang/String;

    .line 15
    return-void
.end method
