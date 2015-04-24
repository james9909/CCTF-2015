.class public Lcom/snapchat/android/api2/framework/HyperRequest$ClassCallbackPair;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/api2/framework/HyperRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClassCallbackPair"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mJsonCallback:Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/snapchat/android/api2/framework/HyperRequest$ClassCallbackPair;->mClass:Ljava/lang/Class;

    .line 45
    iput-object p2, p0, Lcom/snapchat/android/api2/framework/HyperRequest$ClassCallbackPair;->mJsonCallback:Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;

    .line 46
    return-void
.end method
