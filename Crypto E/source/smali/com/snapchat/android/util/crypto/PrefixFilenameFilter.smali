.class public Lcom/snapchat/android/util/crypto/PrefixFilenameFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/snapchat/android/util/crypto/PrefixFilenameFilter;->a:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/snapchat/android/util/crypto/PrefixFilenameFilter;->b:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/snapchat/android/util/crypto/PrefixFilenameFilter;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/util/crypto/PrefixFilenameFilter;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/util/crypto/PrefixFilenameFilter;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
