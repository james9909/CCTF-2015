.class public Lcom/snapchat/android/discover/ui/media/VideoProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;
    }
.end annotation


# instance fields
.field private final a:Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/Integer;

.field private final d:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, -0x1

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/snapchat/android/discover/ui/media/VideoProperties;-><init>(Ljava/lang/String;Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/media/VideoProperties;->b:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/snapchat/android/discover/ui/media/VideoProperties;->a:Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;

    .line 37
    iput-object p3, p0, Lcom/snapchat/android/discover/ui/media/VideoProperties;->c:Ljava/lang/Integer;

    .line 38
    iput-object p4, p0, Lcom/snapchat/android/discover/ui/media/VideoProperties;->d:Ljava/lang/Integer;

    .line 39
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/VideoProperties;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/VideoProperties;->a:Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;

    return-object v0
.end method

.method public c()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/VideoProperties;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method public d()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/VideoProperties;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 73
    const-string v0, "[%s %s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/media/VideoProperties;->b()Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/media/VideoProperties;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
