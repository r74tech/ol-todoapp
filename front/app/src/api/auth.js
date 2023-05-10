import client from "./client";
import Cookies from "js-cookie";

// サインアップ
export const signUp = (params) => {
    return client.post("/auth", params);
};

// サインイン
export const signIn = (params) => {
    client.get("/auth/csrf");
    // headerを設定
    client.defaults.headers.common["X-CSRF-Token"] = Cookies.get("CSRF-TOKEN");
    return client.post("/auth/sign_in", params);
};

// サインアウト
export const signOut = () => {
    return client.delete("/auth/sign_out", {
        headers: {
            "access-token": Cookies.get("_access_token"),
            client: Cookies.get("_client"),
            uid: Cookies.get("_uid"),
        },
    });
};

// ログインユーザーの取得
export const getCurrentUser = () => {
    if (
        !Cookies.get("_access_token") ||
        !Cookies.get("_client") ||
        !Cookies.get("_uid")
    )
        return;
    return client.get("/auth/sessions", {
        headers: {
            "access-token": Cookies.get("_access_token"),
            client: Cookies.get("_client"),
            uid: Cookies.get("_uid"),
        },
    });
};