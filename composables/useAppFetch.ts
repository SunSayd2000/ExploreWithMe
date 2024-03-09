export const useAppFetch = (request, opts?) => {
    const config = useRuntimeConfig()
    const token = useCookie("token");

    return useFetch(request, { baseURL: config.public.baseURL, ...opts,
        headers: token.value
            ? { Authorization: `X-Token ${token.value}` }
            : {},
    })
}