.class public interface abstract Lcom/snapchat/android/api2/framework/NetworkInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final REQUEST_ID_HEADER_NAME:Ljava/lang/String; = "x-snapchat-request-id"


# virtual methods
.method public abstract a(Ljava/lang/String;Lcom/snapchat/android/api2/framework/HttpMethod;Ljava/util/Map;Lcom/snapchat/android/util/memory/Buffer;Ljava/lang/Object;)Lcom/snapchat/android/api2/framework/NetworkResult;
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/api2/framework/HttpMethod;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/snapchat/android/util/memory/Buffer;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/snapchat/android/api2/framework/NetworkResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
