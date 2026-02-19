import {
  BaseConfig,
  type ConfigArguments,
  type ConfigReturn,
} from "jsr:@shougo/dpp-vim/config";
import type { Plugin } from "jsr:@shougo/dpp-vim/types";
import * as fn from "jsr:@denops/std/function";

type LazyMakeStateResult = {
  plugins: Plugin[];
  stateLines: string[];
};

export class Config extends BaseConfig {
  override async config(args: ConfigArguments): Promise<ConfigReturn> {
    args.contextBuilder.setGlobal({
      protocols: ["git"],
    });

    const [context, options] = await args.contextBuilder.get(args.denops);

    let plugins: Plugin[] = [];
    let stateLines: string[] = [];

    const luaPlugins = await fn.luaeval(
      args.denops,
      'require("plugins")',
    ) as Plugin[];

    if (luaPlugins) {
      plugins = [...plugins, ...luaPlugins];
    }

    const lazyResult = await args.dpp.extAction(
      args.denops,
      context,
      options,
      "lazy",
      "makeState",
      { plugins },
    ) as LazyMakeStateResult | undefined;

    if (lazyResult) {
      plugins = lazyResult.plugins;
      stateLines = lazyResult.stateLines;
    }

    return { ftplugins: {}, plugins, stateLines };
  }
}
