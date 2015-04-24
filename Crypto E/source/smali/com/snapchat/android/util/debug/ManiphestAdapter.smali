.class public Lcom/snapchat/android/util/debug/ManiphestAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/debug/ManiphestAdapter$RemoteLogRequestTask;,
        Lcom/snapchat/android/util/debug/ManiphestAdapter$ManiphestCreationTask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[Ljava/io/File;)V
    .locals 11
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 35
    new-instance v10, Ljava/lang/Thread;

    new-instance v0, Lcom/snapchat/android/util/debug/ManiphestAdapter$1;

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v3, p6

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/snapchat/android/util/debug/ManiphestAdapter$1;-><init>(Lcom/snapchat/android/util/debug/ManiphestAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v10, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 80
    return-void
.end method
