.class public interface abstract Lcom/google/android/gms/appindexing/AppLinkingApi$TranslatedUriResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/appindexing/AppLinkingApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TranslatedUriResult"
.end annotation


# static fields
.field public static final UNDEFINED:I = 0x0

.field public static final UNVERIFIED:I = 0x2

.field public static final VERIFIED:I = 0x1


# virtual methods
.method public abstract getAction()Ljava/lang/String;
.end method

.method public abstract getAsIntent()Landroid/content/Intent;
.end method

.method public abstract getOriginalUri()Landroid/net/Uri;
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getUri()Landroid/net/Uri;
.end method

.method public abstract getVerificationStatus()I
.end method
