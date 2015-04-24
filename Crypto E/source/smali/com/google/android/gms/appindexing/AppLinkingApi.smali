.class public interface abstract Lcom/google/android/gms/appindexing/AppLinkingApi;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/appindexing/AppLinkingApi$TranslatedUriResult;,
        Lcom/google/android/gms/appindexing/AppLinkingApi$TranslatedUriResults;
    }
.end annotation


# static fields
.field public static final API_KEY_METADATA_NAME:Ljava/lang/String; = "com.google.android.gms.appindexing.api_key"


# virtual methods
.method public abstract loadTranslatedUri(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Landroid/net/Uri;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/appindexing/AppLinkingApi$TranslatedUriResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract loadTranslatedUris(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/appindexing/AppLinkingApi$TranslatedUriResults;",
            ">;"
        }
    .end annotation
.end method
