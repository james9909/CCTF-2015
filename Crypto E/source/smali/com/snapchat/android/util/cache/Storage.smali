.class public Lcom/snapchat/android/util/cache/Storage;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/io/File;

.field private static b:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/io/File;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/snapchat/android/util/cache/Storage;->a:Ljava/io/File;

    return-object v0
.end method

.method public static a(Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    sput-object p0, Lcom/snapchat/android/util/cache/Storage;->a:Ljava/io/File;

    .line 22
    sput-object p1, Lcom/snapchat/android/util/cache/Storage;->b:Ljava/io/File;

    .line 23
    return-void
.end method

.method public static b()Ljava/io/File;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/snapchat/android/util/cache/Storage;->b:Ljava/io/File;

    return-object v0
.end method
