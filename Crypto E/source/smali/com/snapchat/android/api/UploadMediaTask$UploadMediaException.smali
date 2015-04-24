.class public Lcom/snapchat/android/api/UploadMediaTask$UploadMediaException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/api/UploadMediaTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UploadMediaException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/api/UploadMediaTask;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/api/UploadMediaTask;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/snapchat/android/api/UploadMediaTask$UploadMediaException;->this$0:Lcom/snapchat/android/api/UploadMediaTask;

    .line 53
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 54
    return-void
.end method
