.class public Lcom/snapchat/android/ui/here/LocalPreview$NativeLibraryException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/here/LocalPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NativeLibraryException"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/here/LocalPreview;


# direct methods
.method private constructor <init>(Lcom/snapchat/android/ui/here/LocalPreview;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/snapchat/android/ui/here/LocalPreview$NativeLibraryException;->a:Lcom/snapchat/android/ui/here/LocalPreview;

    .line 57
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/ui/here/LocalPreview;Ljava/lang/String;Lcom/snapchat/android/ui/here/LocalPreview$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/ui/here/LocalPreview$NativeLibraryException;-><init>(Lcom/snapchat/android/ui/here/LocalPreview;Ljava/lang/String;)V

    return-void
.end method
